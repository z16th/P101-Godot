extends Node
class_name Pokemon

var pokemon_name
var capture_rate
var image 

func subtract():
	capture_rate -= 1
	print(capture_rate)

