extends Node

var message = "this is a MESSAGE"

func _ready():
	print(message.capitalize())
	print(message.to_upper())
	print(message.to_lower())
	print(message.length())
	print(message.begins_with("this"))
	print(message.ends_with("message"))
	print(message.find("is a"))
	print(message.replace("MESSAGE","NOTICE"))
	
	print("16.0".to_float())
	print("16".to_int())
	
