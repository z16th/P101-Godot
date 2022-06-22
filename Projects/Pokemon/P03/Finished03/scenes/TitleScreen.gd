extends Control

func _on_GoCatch_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P03/Finished03/scenes/CaptureGame.tscn")

func _on_Exit_pressed():
	get_tree().quit()

