extends Node

var items = ["some thing", "another thing", "one more thing", "the last thing"]
var selection_index setget set_selection_index

func _ready():
	self.selection_index = 0


func next_element():
	if selection_index < items.size() - 1:
		self.selection_index += 1
	else:
		self.selection_index = 0
		
#	Ternary operator version
#	self.selection_index = selection_index + 1 if selection_index < items.size() - 1 else 0


func prev_element():
	if selection_index > 0:
		self.selection_index -= 1
	else:
		self.selection_index = items.size() - 1
	
#	Ternary operator version
#	self.selection_index = selection_index - 1 if selection_index > 0 else items.size() - 1


func set_selection_index(value:int):
	selection_index = value
	$HBoxContainer/VBoxContainer/Item.text = items[value]
	$HBoxContainer/VBoxContainer/Index.text = String(value)


func _on_Next_pressed():
	next_element()


func _on_Prev_pressed():
	prev_element()
