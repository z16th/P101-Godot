extends Node

# 1. Declare a variable called age of type int using your age as value
# 2. Declare a variable called gravity of type float using the moon's gravity as value
# 3. Declare a variable called on_moon of type boolean and set it as true
# 4. Declare a variable called captain of type String with your name as value
# 5. Declare a variable called supplies of type array with a list of things you would take to space
# 6. Declare a variable called spaceship using the next structure:
#	{
#		"captain": captain,
#		"partner": "my best friend's name",
#		"pet": "my pet name",
#		"destination": "Moon",
#		"expected_time_of_arrival": 0,
#	}


func _ready():
	var label = $RichTextLabel
	label.bbcode_text += "Hello"
	label.bbcode_text +=
