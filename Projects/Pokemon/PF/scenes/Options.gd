extends Node

func _ready():
	$Control/HSlider.value = _Game.master_db

func _on_HSlider_value_changed(value):
	_Game.set_master_db(value)

func _on_Button_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/Menu.tscn")
