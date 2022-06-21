extends Node

var bulbasaur = FPokemon.new("Bulbasaur",load("res://Projects/Pokemon/P01/Finished/assets/bulbasaur.png"),15)
var charmander = FPokemon.new("Charmander",load("res://Projects/Pokemon/P01/Finished/assets/charmander.png"),20)
var squirtle = FPokemon.new("Squirtle",load("res://Projects/Pokemon/P01/Finished/assets//squirtle.png"),18)

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
		var label = $Label
		label.visible = true
		label.text = "{pokemon_name} catched!".format({"pokemon_name": picked.pokemon_name})
		var sprite = $Sprite
		var sprite_tween = $Sprite/Tween
		sprite_tween.interpolate_property(sprite,"scale",sprite.scale,Vector2(-3,3),1)
		sprite_tween.start()
		yield(sprite_tween,"tween_completed")
		sprite_tween.interpolate_property(sprite,"scale",sprite.scale,Vector2(3,3),1,Tween.TRANS_ELASTIC,Tween.EASE_IN)
		sprite_tween.start()

func update_sprite():
	$Sprite.texture = picked.sprite
	
func update_progress():
	var tween = $ProgressBar/Tween
	var progress_var = $ProgressBar
	tween.interpolate_property(progress_var,"value",progress_var.value,catch_counter,0.3)
	tween.start()

func get_random_pokemon():
	randomize()
	return pokemons[randi() % pokemons.size()]
