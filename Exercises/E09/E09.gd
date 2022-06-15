extends Node

#0. Create a class script called Fighter (follow the instructions inside Fighter.gd)
#...
#7 Create two fighters and set their nicknames
#	You can use exported variables and nodes
#	Or you can use only code and set their nicknames inside the _ready function
#8 Call the fighters greet() method
#9 Make them fight via punch() method

var fighter_1 = Fighter.new()
var fighter_2 = Fighter.new()

func _ready():
	fighter_1.nickname="Pluma"
	fighter_2.nickname="Llavero"
	
	fighter_1.greet(fighter_2)
	fighter_2.greet(fighter_1)
	
	fighter_1.punch(fighter_2)
	fighter_2.punch(fighter_1)
	
	fighter_1.punch(fighter_2)
	fighter_2.punch(fighter_1)
	
	fighter_1.punch(fighter_2)
	fighter_2.punch(fighter_1)
	
	pass
