extends Node

var Pokemon1 := Pokemon.new()

func _ready():
	Pokemon1.pokemon_name = "Morpeko"
	Pokemon1.capture_rate = 10
	Pokemon1.image=load("res://Projects/Pokemon/assets/morpeko-full-belly.png")
	$Sprite.texture=Pokemon1.image
	$ProgressBar.max_value=Pokemon1.capture_rate
	$Catch.visible = false

func _input(event):
	if event.is_action_pressed("catch") and Pokemon1.capture_rate != 0:
		Pokemon1.subtract()
		$ProgressBar.value +=1
		if Pokemon1.capture_rate == 0:
			$Catch.visible = true
			print(Pokemon1.pokemon_name, " CATCH")
	

