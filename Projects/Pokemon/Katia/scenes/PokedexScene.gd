extends Control

onready var item_list := $ItemList

func _ready():
	item_list.clear()
	for pokemon in TemporalPokedex.catched:
		item_list.add_item(pokemon.pokemon_name,pokemon.image)


func _on_Button_pressed():
	get_tree().change_scene("res://Projects/Pokemon/Katia/scenes/PantallaInicio.tscn")
