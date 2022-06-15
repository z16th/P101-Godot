extends Node
class_name FPokemon

export var pokemon_name:String
export(Texture) var sprite
export var difficulty:int

func _init(name,texture,clicks):
	pokemon_name = name
	sprite = texture
	difficulty = clicks
	print("Created new pokemon")
