extends Lesson

#Lesson 05: Arrays

var friends := ["Katia","Bruno","Erick","Dylan"]

func _ready():
	print("Initial friends: ", friends)
	
	friends.append("Michael")
	print("After appending a new friend: ", friends)
	
	friends.append_array(["Billie","Axel"])
	print("After appending multiple friends", friends)
	
	print("\n")
	
	print("Who is the first friend?: ", friends.front())
	print("Who is the last friend?: ", friends.back())
	print("How many friends do I have?: ", friends.size())
	print("Where on the array is Erick?: ", friends.find("Erick"))
	print("Shuffling...")
	friends.shuffle()
	print("Where on the array is Erick?: ", friends.find("Erick"))
	print("Am I friends with Michael?: ",friends.has("Michael"))
	
	print("After unfriending everyone: ", friends.clear())
