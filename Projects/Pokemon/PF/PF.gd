extends Node

func _ready():
	_Game.connect("updated_current_scene",self,"on_updated_current_scene")

func on_updated_current_scene(node):
	for child in get_children():
		remove_child(child)
		child.queue_free()
	add_child(node)
	
