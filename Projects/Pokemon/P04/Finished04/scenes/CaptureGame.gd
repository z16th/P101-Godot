extends Node

var bulbasaur = P04Pokemon.new("res://Projects/Pokemon/P04/Finished04/resources/pokemons/bulbasaur.tres")
var charmander = P04Pokemon.new("res://Projects/Pokemon/P04/Finished04/resources/pokemons/charmander.tres")
var squirtle = P04Pokemon.new("res://Projects/Pokemon/P04/Finished04/resources/pokemons/squirtle.tres")

var pokemons = [bulbasaur,charmander,squirtle]
var picked:P04Pokemon = get_random_pokemon()

var catch_counter = 0

func _ready():
	update_sprite()
	$ProgressBar.max_value = picked.catch_difficulty
	$Label.visible = false
	$GridContainer.visible = false

func _input(event):
	if Input.is_action_just_pressed("catch"):
		catch_counter += 1
		update_progress()
		check_catch_counter()

func check_catch_counter():
	if catch_counter == picked.catch_difficulty:
		var label = $Label
		label.visible = true
		label.text = "{pokemon_name} catched!".format({"pokemon_name": picked.pokemon_name})
		$Label/Tween.text_tween()
		$Sprite/Tween.animation_tween()
		$Sprite/Particles2D.emitting = true
		$GridContainer.visible = true
		P04GameManager.add_pokemon(picked.pokemon_name)

func update_sprite():
	$Sprite.texture = picked.texture
	
func update_progress():
	$ProgressBar/Tween.progress_tween(catch_counter)

func get_random_pokemon():
	randomize()
	return pokemons[randi() % pokemons.size()]

func _on_KeepCatching_pressed():
	get_tree().reload_current_scene()

func _on_GoToMenu_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P04/Finished04/scenes/TitleScreen.tscn")

