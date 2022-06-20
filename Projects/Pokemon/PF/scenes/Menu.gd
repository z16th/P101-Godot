extends Node

func _on_GoInTheWild_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/CatchGame.tscn")

func _on_Pokedex_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/Pokedex.tscn")

func _on_Options_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/Options.tscn")

func _on_Exit_pressed():
	get_tree().quit()
