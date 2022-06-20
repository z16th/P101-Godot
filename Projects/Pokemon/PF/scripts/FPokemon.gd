extends Node
class_name FPokemon

var pokemon_name:String
var sprite:Texture
var difficulty:int

func _init(name,texture,clicks):
	pokemon_name = name
	sprite = texture
	difficulty = clicks

func reduce_counter():
	difficulty -= 1
