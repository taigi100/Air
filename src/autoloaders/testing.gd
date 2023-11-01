extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalEvents.subscribe(Constants.queue_minute_change, func(): GodotLogger.info("Day " + str(GameTime.day) + " > " + str(GameTime.get_hour()) + ":" + str(GameTime.get_minutes())))
	GlobalEvents.subscribe(Constants.queue_day_change, func(): GodotLogger.info(str(GameTime.day)))
