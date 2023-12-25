extends Node

@onready var origin: Node3D = $Origin;
@onready var lookat: Node3D = $LookAt;

func _on_mouse_entered() -> void:
	print("Just testing");

func _on_input_event(camera:Node, event:InputEvent, _position:Vector3, _normal:Vector3, _shape_idx:int) -> void:
	if event is InputEventMouseButton and (event as InputEventMouseButton).pressed == true:
		(camera as Camera3D).position = origin.position; 
		(camera as Camera3D).look_at(lookat.global_position); 
