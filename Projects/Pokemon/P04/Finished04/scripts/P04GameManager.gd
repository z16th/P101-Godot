extends Node

const SPRITES_PATH = "res://Projects/Pokemon/P04/Finished04/assets/sprites/"

var pokemons_catched = {}

func add_pokemon(pokemon_name):
	if pokemon_name in pokemons_catched:
		pokemons_catched[pokemon_name] += 1
	else:
		pokemons_catched[pokemon_name] = 1
