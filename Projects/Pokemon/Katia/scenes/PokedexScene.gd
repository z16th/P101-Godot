extends Control

onready var item_list := $ItemList

func _ready():
	item_list.clear()
	var x:PokedexResource = ResourceLoader.load(GameManager.SAVE)
	if ResourceLoader.exists(GameManager.SAVE):
		for pokemon in x.catched:
			item_list.add_item(pokemon.pokemon_name,pokemon.image)


func _on_Button_pressed():
	get_tree().change_scene("res://Projects/Pokemon/Katia/scenes/PantallaInicio.tscn")
