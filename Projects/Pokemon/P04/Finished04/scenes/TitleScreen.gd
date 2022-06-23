extends Control

func _on_GoCatch_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P04/Finished04/scenes/CaptureGame.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Pokedex_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P04/Finished04/scenes/Pokedex.tscn")
