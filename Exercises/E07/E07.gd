extends Node
var numbers := [23,923,46,17]
#1. Create an array with numbers
#2. Create a function that adds a new number to the array and prints the updated array
#3. Create a function that takes in a number and adds it at the beginning of the array (print the updated array)
#4. Create a function that returns a random number. Tip: use randi()
#5. Create a function that takes in two numbers, adds them and returns the value so you can save it in a variable
#6. Inside _ready call the function (4.) with any numbers you like and save the returned value.
#7. Call the function (3.) using the saved value from (5.)

func _ready():
	add_number()
	beginning(46)
	var random =random_number()
	print(random)
	print(add(32,87))
	pass
	
func add_number(): 
	numbers.append(12)
	print(numbers)
	
func beginning(n):
	numbers.insert(0,n)
	print(numbers)

func random_number():
	return randi()

func add(x,y):
	return x + y
	
