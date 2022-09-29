extends Lesson

# Lesson 02: Data types

# integer number (int)
var number = 10
# float number
var float_number = 4.3
# boolean (bool)
var boolean = false
# string (String)
var string = "Hello"

# array (Array)
var array = ["2", 1, false]
# dictionary (Dictionary)
var dictionary = {
	"prop": "value",
	"other_prop": "other value"
}

func _ready():
	print(number)
	print(float_number)
	print(boolean)
	print(string)
	print(array)
	print(dictionary)
