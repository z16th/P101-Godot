extends Lesson

# Lesson 01: Variables and constants

var my_number = 8
var speed = 12.8

const EARTH_GRAVITY = 9.81

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
