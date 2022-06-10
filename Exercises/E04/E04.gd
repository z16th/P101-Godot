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
	$GridContainer/Uppercase.text = phrase.to_upper() #Replace this value
	$GridContainer/Lowercase.text = phrase.to_lower() #Replace this value
	$GridContainer/Capitalized.text = phrase.capitalize() #Replace this value
	$GridContainer/Length.text = String(phrase.length()) #Replace this value
	$GridContainer/StartsWithC.text = String(phrase.begins_with("C")) #Replace this value
	$GridContainer/EndsWithY.text = String(phrase.ends_with("y")) #Replace this value
	$GridContainer/HowManyEs.text = String(phrase.count("e")) #Replace this value
