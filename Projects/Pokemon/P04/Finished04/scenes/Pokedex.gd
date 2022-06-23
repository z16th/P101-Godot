extends Control

onready var item_list = $GridContainer/ItemList

func _ready():
	item_list.clear()
	for pokemon_name in P04GameManager.pokemons_catched:
		var text = "{pokemon_name}: {times_catched}".format({"pokemon_name":pokemon_name, "times_catched": P04GameManager.pokemons_catched[pokemon_name]})
		var icon = load(P04GameManager.SPRITES_PATH+pokemon_name+".png")
		item_list.add_item(text,icon)


func _on_Button_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P04/Finished04/scenes/TitleScreen.tscn")


func _on_ItemList_item_selected(index):
	$GridContainer/Panel/Label.text = item_list.get_item_text(index)
	$GridContainer/Panel/TextureRect.texture = item_list.get_item_icon(index)
