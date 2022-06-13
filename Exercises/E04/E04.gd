extends Node

#Use String methods to change the texts in the labels

#1. Text in $GridContainer/Uppercase has uppercase format
#2. Text in $GridContainer/Lowercase has lowercase format
#3. Text in $GridContainer/Capitalized has capitalized format
#4. Text in $GridContainer/Length displays the length of the phrase
#5. Text in $GridContainer/StartsWithC displays if the phrase starts with "C"
#6. Text in $GridContainer/EndsWithY displays if the phrase ends with "y"
#7. Text in $GridContainer/HowManyEs displays the number of "e"s in the phrase

var phrase = "Captain Teemo on duty!"

func _ready():
	$GridContainer/Uppercase.text = "\n" #Replace this value
	$GridContainer/Lowercase.text = "\n" #Replace this value
	$GridContainer/Capitalized.text = "\n" #Replace this value
	$GridContainer/Length.text = "\n" #Replace this value
	$GridContainer/StartsWithC.text = "\n" #Replace this value
	$GridContainer/EndsWithY.text = "\n" #Replace this value
	$GridContainer/HowManyEs.text = "\n" #Replace this value
