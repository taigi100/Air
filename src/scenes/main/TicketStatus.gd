extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Constants.good_ticket.connect(good_ticket)
	Constants.bad_ticket.connect(bad_ticket)

func bad_ticket():
	text = "BAD";
	add_theme_color_override("font_color", Color.DARK_RED)

func good_ticket():
	text = "GOOD";
	add_theme_color_override("font_color", Color.GREEN)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
