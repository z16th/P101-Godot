extends Control



func _on_Button_pressed():
	get_tree().change_scene("res://Projects/Pokemon/Katia/scenes/CatchGame.tscn")


func _on_Button2_pressed():
	get_tree().quit()


func _on_Pokedex_pressed():
	get_tree().change_scene("res://Projects/Pokemon/Katia/scenes/PokedexScene.tscn")
