extends Node
const CUSTOMER = preload("res://entities/customer/customer.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Constants.customer_spawn.connect(spawn_customer)


func spawn_customer() -> void:
	var customer = CUSTOMER.instantiate()
	for c in owner.get_children():
		if c.name == "Customers":
			c.add_child(customer)
			return

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
