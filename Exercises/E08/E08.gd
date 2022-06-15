extends Node

#1. Create a loop that prints the even numbers from 0 to 100 (use if logic instead of stepped loops)
#2. Create a loop that prints the numbers from 3 to 0
#3. Create a loop that prints the sequence 3,6,9,12... up to 30 (use a stepped loop)
#4. Create an array of names and print every name in the array via loop
#5. Create a dictionary of song:artist and print "song by artist" via loop
#6. Create a loading metter using a while loop from 0 to 100

func _ready():
	#even_numbers()
	#numbers()
	#sequence()
	#names()
	song_artist()
	pass
	
func even_numbers():
	for n in range(0,100):
		if n % 2 == 0:
			print(n)

func numbers():
	for n in range(3,0,-1):
		print(n)

func sequence():
	for n in range(0,30,3):
		print(n)

func names():
	for item in ["Katia","Lizbeth","Erick","Fernando"]:
		print(item)

func song_artist():
	var songs = {"Dangerous":"MJ","Pompeii":"Bastille","Radioactive":"Imagine Dragons"}
	for song_name in songs:
		print(song_name + " by " + songs[song_name])
