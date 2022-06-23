extends Node
class_name P04Pokemon

var pokemon_name:String
var texture:Texture
var catch_difficulty:int = 1

func _init(res_path):
	use_resource(res_path)

func reduce_counter():
	catch_difficulty -= 1

func use_resource(resource_path):
	if ResourceLoader.exists(resource_path):
		var res:P04PokemonResource = ResourceLoader.load(resource_path)
		pokemon_name = res.pokemon_name
		texture = res.texture
		catch_difficulty = res.catch_difficulty
