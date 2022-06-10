extends Lesson

# LESSON 03: Basic math operations

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

