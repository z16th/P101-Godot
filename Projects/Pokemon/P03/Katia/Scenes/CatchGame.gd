extends Node

var Pokemon1 := Pokemon.new()
onready var sprite = $Sprite
var progress = 0

func _ready():
	Pokemon1.pokemon_name = "Morpeko"
	Pokemon1.capture_rate = 10
	Pokemon1.image=load("res://Projects/Pokemon/assets/morpeko-full-belly.png")
	$Sprite.texture=Pokemon1.image
	$Sprite/Tween.animated_position()
	$ProgressBar.max_value=Pokemon1.capture_rate
	$Catch.visible = false
	$Sprite/Particles2D.visible = false

func _input(event):
	if event.is_action_pressed("catch") and Pokemon1.capture_rate != 0:
		Pokemon1.subtract()
		var progress_bar = $ProgressBar
		progress= progress_bar.value
		progress_bar.value +=1
		$ProgressBar/Tween.progress_tween(progress,progress_bar.value)
		if Pokemon1.capture_rate == 0:
			$Catch.visible = true
			$Catch/Tween.catch_animation()
			$Sprite/Particles2D.visible = true
			print(Pokemon1.pokemon_name, " CATCH")



