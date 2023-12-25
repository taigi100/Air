extends Node

var menu = preload("res://menus/main_menu/menu.tscn")
var world = preload("res://scenes/main/world.tscn")
var interday = preload("res://menus/inter_day/inter_day.tscn")

var removable_nodes = ["Menu", "World", "InterDay"]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	open_menu()
	Constants.day_start.connect(open_world)
	Constants.day_end.connect(open_interday)

func open_menu() -> void:
	remove_children()
	var menuLevel = menu.instantiate()
	add_child(menuLevel)

func open_world() -> void:
	remove_children()
	var worldLevel = world.instantiate()
	add_child(worldLevel)

func open_interday() -> void:
	remove_children()
	var interDay = interday.instantiate()
	add_child(interDay)
	
func remove_children() -> void:
	for n in self.get_children():
		if removable_nodes.has(n.name):
			remove_child(n)
			n.queue_free()
