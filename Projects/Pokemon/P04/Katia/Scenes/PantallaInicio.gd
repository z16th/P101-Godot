extends Control



func _on_Button_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P04/Katia/Scenes/CatchGame.tscn")


func _on_Button2_pressed():
	get_tree().quit()
