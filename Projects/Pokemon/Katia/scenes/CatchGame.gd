extends Node

onready var sprite = $Sprite
var progress = 0
#var pokemon1 := Pokemon.new("res://Projects/Pokemon/Katia/resources/pokemon/Morpeko.tres")
#var pokemons = [pokemon1,pokemon1,pokemon1]
#var picked:Pokemon = get_random_pokemon()

var pokemons = []
var picked:Pokemon 

# 0. Populate array with the first value of pokemon_paths
# 1. Populate array with Pokemon(s)
# 2. Assign value to "picked" 

func _ready():
#	[Alcremie.tres, Appletun.tres, Applin.tres,...]
	var pokemon_paths = _Utils.list_files_in_directory("res://Projects/Pokemon/Katia/resources/pokemon/")
	for poke in pokemon_paths:
		pokemons.append(Pokemon.new("res://Projects/Pokemon/Katia/resources/pokemon/" + poke))
	picked = get_random_pokemon()
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
			
			var x
			if ResourceLoader.exists(GameManager.SAVE):
				x = ResourceLoader.load(GameManager.SAVE)
			else:
				x = PokedexResource.new()
			
			x.add_pokemon(picked)
			ResourceSaver.save(GameManager.SAVE,x)	

func _on_Button_pressed():
	get_tree().reload_current_scene()

func _on_Button2_pressed():
	get_tree().change_scene("res://Projects/Pokemon/Katia/scenes/PantallaInicio.tscn")

func get_random_pokemon():
	randomize()
	return pokemons[randi() % pokemons.size()]

