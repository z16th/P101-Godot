extends Node

var bulbasaur = FPokemon.new("Bulbasaur",load("res://Projects/Pokemon/P03/Finished03/assets/sprites/bulbasaur.png"),15)
var charmander = FPokemon.new("Charmander",load("res://Projects/Pokemon/P03/Finished03/assets/sprites/charmander.png"),20)
var squirtle = FPokemon.new("Squirtle",load("res://Projects/Pokemon/P03/Finished03/assets/sprites//squirtle.png"),18)

var pokemons = [bulbasaur,charmander,squirtle]
var picked:FPokemon = get_random_pokemon()

var catch_counter = 0

func _ready():
	update_sprite()
	$ProgressBar.max_value = picked.difficulty
	$Label.visible = false
	$GridContainer.visible = false

func _input(event):
	if Input.is_action_just_pressed("catch"):
		catch_counter += 1
		update_progress()
		check_catch_counter()

func check_catch_counter():
	if catch_counter == picked.difficulty:
		var label = $Label
		label.visible = true
		label.text = "{pokemon_name} catched!".format({"pokemon_name": picked.pokemon_name})
		$Label/Tween.text_tween()
		$Sprite/Tween.animation_tween()
		$Sprite/Particles2D.emitting = true
		$GridContainer.visible = true

func update_sprite():
	$Sprite.texture = picked.sprite
	
func update_progress():
	$ProgressBar/Tween.progress_tween(catch_counter)

func get_random_pokemon():
	randomize()
	return pokemons[randi() % pokemons.size()]

func _on_KeepCatching_pressed():
	get_tree().reload_current_scene()

func _on_GoToMenu_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P03/Finished03/scenes/TitleScreen.tscn")

