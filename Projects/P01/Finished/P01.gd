extends Node

var bulbasaur = FPokemon.new("Bulbasaur","res://Projects/P01/assets/bulbasaur.png",15)
var charmander = FPokemon.new("Charmander","res://Projects/P01/assets/charmander.png",20)
var squirtle = FPokemon.new("Squirtle","res://Projects/P01/assets/squirtle.png",18)

var pokemons = [bulbasaur,charmander,squirtle]
var picked:FPokemon = get_random_pokemon()

var catch_counter = 0

func _ready():
	update_sprite()
	$ProgressBar.max_value = picked.difficulty
	$Label.visible = false

func _input(event):
	if Input.is_action_just_pressed("catch"):
		catch_counter += 1
		update_progress()
		check_catch_counter()

func check_catch_counter():
	if catch_counter == picked.difficulty:
		$Label.visible = true
		$Label.text = "{pokemon_name} catched!".format({"pokemon_name": picked.pokemon_name})

func update_sprite():
	$Sprite.texture = load(picked.sprite)

func update_progress():
	$ProgressBar.value = catch_counter

func get_random_pokemon():
	randomize()
	return pokemons[randi() % pokemons.size()]