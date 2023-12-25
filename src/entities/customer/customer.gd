extends Node3D

@onready var dialogue = $Dialogue;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialogue.set_text("Hello Air!");
