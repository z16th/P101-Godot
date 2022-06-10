extends Lesson

# Lesson 08: Loops
# Based on code found at: https://gdscript.com/tutorials/looping/

func _ready():
	while_loop()

func basic_loop():
	for n in 10:
		print(n)

func range_loop():
	for n in range(5,10):
		print(n)

func range_loop_reversed():
	for n in range(5,0,-1):
		print(n)

func range_loop_stepped():
	for n in range(0,100,10):
		print(n)

func loop_over_string():
	for letter in "Some message":
		print(letter)

func loop_over_array():
	for item in ["a","b","c",1,2,3]:
		print(item)

func loop_over_dictionary():
	var dictionary = {"one":1, "two":2,"three":3}
	for key in dictionary:
		print(dictionary[key])

func continue_and_break_loop():
	for n in 10:
		if n < 3:
			continue
		if n > 6:
			break
		print(n)

func while_loop():
	var fuel = 1000
	var speed = 0
	
	while fuel > 0:
		speed += 0.12
		fuel -= 1
	
	print("Speed reached with 1000 fuel: ",speed)
