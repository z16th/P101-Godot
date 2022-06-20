extends Node

onready var item_list = $Control/HBoxContainer/ItemList

var selected setget set_selected

func _ready():
	item_list.clear()
	var catched = load_pokedex_data()
	var non_catched = get_non_catched_pokemons(catched)
	for pokemon in catched:
		var text = "{name}: {number}".format({"name": pokemon.capitalize(),"number": catched[pokemon]})
		var texture_path = _Utils.SPRITES_PATH+pokemon+".png"
		item_list.add_item(text,load(texture_path),true)
	for pokemon in non_catched:
		var text = "???"
		var texture_path = _Utils.SPRITES_PATH+pokemon+".png"
		item_list.add_item(text,load(texture_path),false)
	for i in item_list.get_item_count():
		if not item_list.is_item_selectable(i):
			item_list.set_item_icon_modulate(i,Color.black)
	
func load_pokedex_data():
	if ResourceLoader.exists(FPokedex.get_save_path()):
		var data:FPokedex = ResourceLoader.load(FPokedex.get_save_path())
		return data.catched
	return FPokedex.new().catched

func get_non_catched_pokemons(catched):
	var non_catched = []
	var existing_pokemons = _Utils.get_pokemon_names()
	for pokemon in existing_pokemons:
		if not catched.has(pokemon):
			non_catched.append(pokemon)
	
	return non_catched

func set_selected(index):
	$Control/HBoxContainer/Panel/Label.text = item_list.get_item_text(index)
	$Control/HBoxContainer/Panel/TextureRect.texture = item_list.get_item_icon(index)

func _on_ItemList_item_selected(index):
	if not item_list.is_item_selectable(index):
		return
		
	self.selected = index

func _on_GoToMenu_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/Menu.tscn")
