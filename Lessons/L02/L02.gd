extends Lesson

<<<<<<< Updated upstream
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
=======
# Lesson 02: Basic math operations

# Uninitialized variable
var result

# Using const instead of var
const unmutable_result = 10 + 10

func _ready():
#	unmutable_result = 12
	
	result = 2 + 5
	print("The result of 2 + 5 is: ", result)
	
	result = 10 - 9
	print("The result of 10 - 9 is: ", result)
	
	result = 2.0 / 4.0
	print("The result of 2 / 4 is: ", result)
	
	result = 10 % 4
	print("The remainder of 10 / 4 is: ", result)
	
	result = 4 * 4
	print("The result of 4 * 4 is: ", result)
	
	result = result + 1
	print("Incrementing the last result by 1: ", result)
	
	result += 1
	print("(Shorthand) Incrementing the last result by 1: ", result)
	
	result = result - 10
	print("Decrementing the last result by 10: ", result)
	
	result -= 10
	print("(Shorthand) Decrementing the last result by 10: ", result)

>>>>>>> Stashed changes
