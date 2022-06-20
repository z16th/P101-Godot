extends Node

onready var tween = $Tween

var pokemon:FPokemon

func _ready():
	var res:FPokemonResource = get_random_pokemon_resource()
	pokemon = FPokemon.new(res.name,res.sprite,res.catch_difficulty)
	$Sprite.texture = pokemon.sprite
	$Label.text = "A wild {pokemon} appeared!".format({"pokemon": pokemon.pokemon_name})
	$ProgressBar.max_value = pokemon.difficulty
	$GridContainer.visible = false

func _input(event):
	if event.is_action_pressed("catch") and pokemon.difficulty != 0:
		pokemon.reduce_counter()
		tween_progress()
		if pokemon.difficulty == 0:
			$Label.text = "{pokemon} catched!".format({"pokemon": pokemon.pokemon_name})
			play_catched()
			$GridContainer.visible = true
			add_to_pokedex(pokemon.pokemon_name)

func get_random_pokemon_resource():
	var resources = _Utils.list_pokemon_resources()
	randomize()
	resources.shuffle()
	return load(_Utils.POKEMONS_RES_PATH + resources.front())

func play_catched():
	$AudioStreamPlayer.stream = load("res://Projects/Pokemon/PF/assets/music/catch_sound.mp3")
	$AudioStreamPlayer.play()
 
func tween_progress():
	var progess_bar = $ProgressBar
	tween.interpolate_property(progess_bar,"value",progess_bar.value,progess_bar.value+1,0.05, Tween.TRANS_SINE,Tween.EASE_IN)
	tween.start()

func add_to_pokedex(pokemon_name):
	var data:FPokedex = _Utils.load_pokedex()
	data.add_pokemon(pokemon_name)

func _on_KeepGoing_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/CatchGame.tscn")

func _on_GoToMenu_pressed():
	_Game.set_current_scene("res://Projects/Pokemon/PF/scenes/Menu.tscn")
