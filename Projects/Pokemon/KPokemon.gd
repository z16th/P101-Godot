extends Node
class_name Pokemon

var pokemon_name
var capture_rate
var image 

func subtract():
	capture_rate -= 1
	print(capture_rate)

func update_by_resource(x:String):
	var resource:PokemonResource = ResourceLoader.load(x) 
	pokemon_name = resource.pokemon_name
	capture_rate = resource.capture_rate
	image = resource.image

func _init(res_path):
	update_by_resource(res_path)
