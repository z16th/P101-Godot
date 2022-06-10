extends Node

# Use Dictionary methods

# 1. Create a dictionary with your favorite music genres as keys and favorite band of each genre as value
# 2. Print the number of items in your dictionary
# 3. Print a list of all the favorite genres
# 4. Print a list of all the favorite bands
# 5. Print if the dictionary has "rock" in it
var favorite_music := {
	"Folk Metal": "Mago de Oz",
	"Pop" : "Michael Jackson",
	"Banda" : "Banda MS", 
	"Anime" : "FLOW",
	"KPOP" : "Black Pink",
}
func _ready():
	print("number of items:",favorite_music.size())
	print("Favorite genres:",favorite_music.keys())
	print("Favorite bands:",favorite_music.values())
	print("I like rock?:",favorite_music.has("Rock"))
