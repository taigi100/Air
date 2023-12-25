extends Node

var start_hour = 8
var end_hour = 23

var seconds: float = 0

func get_hour() -> int:
	return start_hour + (seconds / (Constants.seconds_in_minute * Constants.minutes_in_hours))

func get_minutes() -> int:
	return (seconds - (get_hour() - start_hour) * Constants.minutes_in_hours * Constants.seconds_in_minute) / Constants.seconds_in_minute

var is_time_paused: bool = false

func pause_time() -> void:
	is_time_paused = true

func resume_time() -> void:
	is_time_paused = false

func hour_to_seconds(hour: int) -> int:
	return hour * Constants.minutes_in_hours * Constants.seconds_in_minute

var last_broadcast_minute: int = -1

func _ready() -> void:
	Constants.day_start.connect(start_time)

func start_time() -> void:
	GodotLogger.info("Starting day timer")
	seconds = 0
	resume_time()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	seconds += delta * Constants.time_dilation * (1 - int(is_time_paused))
	if (seconds + hour_to_seconds(start_hour) >= hour_to_seconds(end_hour)):
		GodotLogger.info("Stopping day timer")
		seconds = 0
		pause_time()
		Constants.day_end.emit()
	
	if (get_minutes() % Constants.time_broadcast_frequency == 0 && get_minutes() != last_broadcast_minute):
		last_broadcast_minute = get_minutes()
		Constants.gametime_minutechange.emit(get_hour(), get_minutes())
