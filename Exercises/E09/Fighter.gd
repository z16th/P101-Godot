extends Node
class_name Fighter

var nickname
var health:int=3

func greet(x:Fighter):
	print(nickname, ": Get ready ", x.nickname)

func take_damage():
	health = health - 1
	if health == 0:
		print(nickname, " defeated")

func punch(x:Fighter):
	x.take_damage()
	
#1. Set the class_name to Fighter
#2. Add a property called nickname
#3. Add a property called health (type int) with default value 3
#4. Add a method called greet that takes in a Fighter and prints "Get ready, {fighter.nickname}"
#5. Add a method called take_damage that reduces the health by 1 and if health reaches 0 print ("{nickname} defeated")
#6. Add a method called punch that takes in a Fighter and calls the take_damage method
