extends Node

#Use String methods to change the texts in the labels

#1. Text in $Uppercase has uppercase format
#2. Text in $Lowercase has lowercase format
#3. Text in $Capitalized has capitalized format
#4. Text in $Length displays the length of the phrase
#5. Text in $StartsWithC displays if the phrase starts with "C"
#6. Text in $EndsWithY displays if the phrase ends with "y"
#7. Text in $HowManyEs displays the number of "e"s in the phrase

var phrase = "Captain Teemo on duty!"

func _ready():
	$Uppercase.text = "\n" #Replace this value
	$Lowercase.text = "\n" #Replace this value
	$Capitalized.text = "\n" #Replace this value
	$Length.text = "\n" #Replace this value
	$StartsWithC.text = "\n" #Replace this value
	$EndsWithY.text = "\n" #Replace this value
	$HowManyEs.text = "\n" #Replace this value
