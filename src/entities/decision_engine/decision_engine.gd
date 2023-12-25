extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Constants.give_ticket.connect(check_ticket)


func check_ticket(ticket: Ticket):
	if ticket.ticket_name == "Good":
		Constants.good_ticket.emit()
	else:
		Constants.bad_ticket.emit()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
