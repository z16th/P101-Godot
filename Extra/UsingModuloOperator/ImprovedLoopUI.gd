extends Node

var items = ["some thing", "another thing", "one more thing", "the last thing"]
var counter setget set_counter

func _ready():
	self.counter = 0


func next_element():
	self.counter += 1


func prev_element():
	self.counter -= 1


func set_counter(value:int):
	counter = value
	var idx = abs(counter) % items.size()
	$HBoxContainer/CenterContainer/VBoxContainer/Item.text = items[idx]
	$HBoxContainer/CenterContainer/VBoxContainer/Index.text = String(idx)
	$HBoxContainer/CenterContainer/VBoxContainer/Counter.text = String(counter)


func _on_Next_pressed():
	next_element()


func _on_Prev_pressed():
	prev_element()
