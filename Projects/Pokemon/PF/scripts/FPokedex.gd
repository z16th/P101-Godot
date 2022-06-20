extends Resource
class_name FPokedex

export var catched = {}

func add_pokemon(pokemon_name:String):
	var formatted = pokemon_name.to_lower()
	if formatted in catched:
		catched[formatted] = catched[formatted] + 1
	else:
		catched[formatted] = 1
	save()

func save():
	ResourceSaver.save(get_save_path(),self) 

static func get_save_path():
	var DEV_SAVE_PATH := "res://Projects/Pokemon/PF/saved/pokedex.tres"
	var SAVE_PATH := "user://saved/pokedex.tres"
	if OS.is_debug_build():
		return DEV_SAVE_PATH
	return SAVE_PATH
