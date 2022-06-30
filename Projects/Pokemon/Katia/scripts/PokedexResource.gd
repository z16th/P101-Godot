extends Resource
class_name PokedexResource

export(Array, Resource) var catched:= []

func add_pokemon(pokemon:Pokemon):
	var pokemon_res = load("res://Projects/Pokemon/Katia/resources/pokemon/"+pokemon.pokemon_name+".tres")
	catched.append(pokemon_res)
