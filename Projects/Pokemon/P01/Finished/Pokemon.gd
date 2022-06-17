extends Node
class_name FPokemon

var pokemon_name:String
var sprite
var difficulty:int

func _init(name,texture,clicks):
	pokemon_name = name
	sprite = texture
	difficulty = clicks
	print("Created new pokemon")
