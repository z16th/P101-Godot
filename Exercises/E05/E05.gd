extends Node

# 1. Create an array with your favorite animals
# 2. Shuffle the array
# 3. Print your top 1 animal using .find()
# 4. Print the number of favorite animals
# 5. Print if the array has "dog" in it
# 6. Print the first animal without using indexes
# 7. Print the last animal without using indexes
var animals := ["elephant","wolf","cow", "cat"]
func _ready():
	print("First animal:", animals.front())
	print("Last animal:", animals.back())
	animals.shuffle()
	var favorite_animal_index = animals.find("elephant")
	print("My favorite animal:",animals[favorite_animal_index])
	print("Favorite animals:", animals.size())
	print("I like dogs?:", animals.has("dog"))
	
