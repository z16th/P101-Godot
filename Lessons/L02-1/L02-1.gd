extends Lesson

# Lesson 02-1: Typing

# integer number (int)
var my_number : int = 10
# float number
var my_float_number : float = 4.3
# boolean (bool)
var my_boolean : bool = false
# string (String)
var my_string : String = "Hello"

# array (Array)
var my_array : Array = ["2", 1, false]
# dictionary (Dictionary)
var my_dictionary : Dictionary = {
	"prop": "value",
	"other_prop": "other value"
}

func _ready():
	print(my_number)
	print(my_float_number)
	print(my_boolean)
	print(my_string)
	print(my_array)
	print(my_dictionary)
