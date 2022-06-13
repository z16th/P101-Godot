extends Lesson

#Lesson 06: Dictionaries

var favorite_games = {
	"rpg": "Fable",
	"rhythm": "Guitar Hero III",
	"moba": "League of Legends",
	"fps": "Black Ops II",
	"point and click": "Fran Bow"
}

func _ready():
	print("What's my favorite rpg?: ", favorite_games.rpg)
	print("What's my favorite moba?: ",favorite_games.moba)
	print("What's my favorite point and click?: ", favorite_games["point and click"])
	var favorite_genre = "fps"
	print("What's my favorite game from my favorite genre?: ", favorite_games[favorite_genre])

	print("\n")
	print("What keys has my collection?: ", favorite_games.keys())
	print("What values has my collection?: ", favorite_games.values())
	print("How many favorite games do I have?: ",favorite_games.size())
	print("Does my favorite games collection have a rhythm game?: ",favorite_games.has("rhythm"))
