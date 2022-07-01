extends Node

const SPRITES_PATH = "res://Projects/Pokemon/PF/assets/sprites/"
const POKEMONS_RES_PATH = "res://Projects/Pokemon/PF/resources/pokemons/"

func load_pokedex():
	if ResourceLoader.exists(FPokedex.get_save_path()):
		return ResourceLoader.load(FPokedex.get_save_path())
	else:
		var resource = FPokedex.new()
		resource.save()
		return resource

func load_resource(path):
	if ResourceLoader.exists(path):
		return load(path)
	return null

func convert_sprites_to_resources(sprites_path,resources_path):
	var image_paths = filter_by_extension(list_files_in_directory(sprites_path),"png")
	for path in image_paths:
		var resource = PokemonResource.new()
		var pokemon_name = path.replace(".png","").capitalize()
		resource.pokemon_name = pokemon_name.capitalize()
		resource.image = load(sprites_path + path)
		
		var save_path = resources_path+pokemon_name+".tres"
		ResourceSaver.save(save_path,resource)

func list_pokemon_resources() -> Array:
	assert(not ResourceLoader.exists(POKEMONS_RES_PATH))
	return list_files_in_directory(POKEMONS_RES_PATH)

func list_files_in_directory(path):
	var files = []
	var dir = Directory.new()
	if dir.open(path) == OK:
		dir.list_dir_begin()

		while true:
			var file = dir.get_next()
			if file == "":
				break
			elif not file.begins_with("."):
				files.append(file)

		dir.list_dir_end()
		return files
	else:
		assert(false,"Error occurred trying to list files in {path}".format({"path":path}))

func get_pokemon_names():
	var sprite_paths = filter_by_extension(list_files_in_directory(POKEMONS_RES_PATH),"tres")
	var names = []
	for path in sprite_paths:
		names.append(path.replace(".tres",""))
	return names

func filter_by_extension(arr:Array,extension:String):
	var filtered = []
	for item in arr:
		if item.ends_with("." + extension):
			filtered.append(item)
	return filtered
