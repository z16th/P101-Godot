extends Lesson

#Lesson 04: Strings

const player_name = "goDot"

# Different ways to assign a string value
var string_using_double_quotes = "Hello, I'm using double quotes: I can use single quotes inside but I have to escape \"double quotes\""
var string_using_single_quotes = 'Hello, I\'m using single quotes: I can use double quotes inside but I have to escape \'single quotes\''
var joining_strings = "A nice" + " and cozy " + "joined string"
var joining_with_variables = "Hello, " + player_name

func _ready():
	print(string_using_double_quotes)
	print(string_using_single_quotes)
	print(joining_strings)
	print(joining_with_variables)
	var res_path = "algo_bien_cool.tres"
	var ruta_compleja = "res://una_ruta/por/aqui/{algo_con_extension}/{q}/{asd}".format({
		"algo_con_extension": res_path,
		"asd": 10,
		"q": "hola"
	})
	print(ruta_compleja)
	

	print("\n")
	
#	Methods that come inside the String class
	print("How long is the player's name: ", player_name.length())
	print("Does the player name start with G?: ", player_name.begins_with("G"))
	print("Does it end with z?: ", player_name.ends_with("z"))
	print("What's the player name capitalized?: ", player_name.capitalize())
	print("...and with full uppercase letters?: ", player_name.to_upper())
	print("... what about lowercase...?: ", player_name.to_lower())
	print("What if we change o's to 0's: ",player_name.replace("o","0"))
	print("How many o's does the player name has: ", player_name.count("o"))
