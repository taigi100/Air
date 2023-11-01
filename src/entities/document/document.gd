extends Node3D

@onready var name_sprite = $name
@export var text_sprite: String = "Placeholder text";

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Just a test", text_sprite);
	(name_sprite.mesh as TextMesh).text = text_sprite; 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
