extends Control

@onready var label = $Text;

func set_text(text: String) -> void:
	label.text = text;
