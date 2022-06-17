extends Node

var Pokemon1 := Pokemon.new()

func _ready():
	Pokemon1.pokemon_name = "Morpeko"
	Pokemon1.capture_rate = 10

func _input(event):
	if event.is_action_pressed("catch") and Pokemon1.capture_rate != 1:
		Pokemon1.subtract()
		if Pokemon1.capture_rate == 1:
			print(Pokemon1.pokemon_name, " CATCH")
