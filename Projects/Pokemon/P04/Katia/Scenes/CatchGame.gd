extends Node

var pokemon1 := Pokemon.new("res://Projects/Pokemon/P04/Katia/resources/pokemon/Morpeko.tres")
onready var sprite = $Sprite
var progress = 0
var pokemon2 = Pokemon.new("res://Projects/Pokemon/P04/Katia/resources/pokemon/Wooloo.tres")
var pokemon3 = Pokemon.new("res://Projects/Pokemon/P04/Katia/resources/pokemon/Yamper.tres")

var pokemons = [pokemon1,pokemon2,pokemon3]
var picked:Pokemon = get_random_pokemon()

func _ready():
	$Sprite.texture=picked.image
	$Sprite/Tween.animated_position()
	$ProgressBar.max_value=picked.capture_rate
	$Catch.visible = false
	$Sprite/Particles2D.visible = false

func _input(event):
	if event.is_action_pressed("catch") and picked.capture_rate != 0:
		picked.subtract()
		var progress_bar = $ProgressBar
		progress= progress_bar.value
		progress_bar.value +=1
		$ProgressBar/Tween.progress_tween(progress,progress_bar.value)
		if picked.capture_rate == 0:
			$Catch.visible = true
			$Catch/Tween.catch_animation()
			$Sprite/Particles2D.visible = true
			print(picked.pokemon_name, " CATCH")

func _on_Button_pressed():
	get_tree().reload_current_scene()

func _on_Button2_pressed():
	get_tree().change_scene("res://Projects/Pokemon/P04/Katia/Scenes/PantallaInicio.tscn")

func get_random_pokemon():
	randomize()
	return pokemons[randi() % pokemons.size()]
