extends Lesson

# Lesson 01: Variables and constants

var my_number = 8
var speed = 12.8

const EARTH_GRAVITY = 9.81

<<<<<<< Updated upstream
=======
# integer number (int)
var number = 10
# float number (float)
var float_number = 4.3
# boolean (bool)
var boolean = false
# string (String)
var string = "Hello"

# array (Array)
var array = ["2",1,false]
# dictionary (Dictionary)
var dictionary = {
	"prop": "value",
	"other_prop": "other value"
}

# This function will execute when the L01 scene appears in your game
>>>>>>> Stashed changes
func _ready():
	print(my_number)
	print(speed)
	print(EARTH_GRAVITY)
	
#	EARTH_GRAVITY = 30
	
	speed = 20
	print(speed)
	speed = speed * 10
	print(speed)
	speed = null
	print(speed)
