extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_end_day_pressed() -> void:
	Constants.day_end.emit()


func _on_spawn_customer_pressed() -> void:
	Constants.customer_spawn.emit()


func _on_gib_good_pressed() -> void:
	var ticket = Ticket.new("Good")
	Constants.give_ticket.emit(ticket)


func _on_gib_bad_pressed() -> void:
	var ticket = Ticket.new("Bad")
	Constants.give_ticket.emit(ticket)
