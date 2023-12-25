extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Constants.gametime_minutechange.connect(update_text)
	

func update_text(hour: int, minute: int) -> void:
	text = str(hour) + " " + str(minute)
