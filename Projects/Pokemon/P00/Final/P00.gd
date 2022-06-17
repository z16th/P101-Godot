extends Node

var pokemon_name = "Bulbasaur"
var catch_difficulty = 10

var catch_counter = 0
var catched = false

func _ready():
	print("Instructions: Press the space bar to catch the pokemon\n")
	print("A wild ",pokemon_name," has appeared!")

func _input(event):
	if event.is_action_pressed("catch"):
		increment_counter()
		check_catch()

func increment_counter():
	if catch_counter < catch_difficulty:
		catch_counter += 1
		print("catching... ", "(",catch_counter,"/",catch_difficulty,")")

func check_catch():
		if catch_counter == catch_difficulty and catched == false:
			print(pokemon_name," catched!")
			catched = true
