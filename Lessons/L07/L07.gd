extends Lesson

#Lesson 07: Functions

var message = "Original message"

func _ready():
	say_message()
	
	say_message_but_changed()
	
	say_message_with_inner_variable()
	
	say_message_but_you_tell_me_the_message("Hello from _ready()")

	var secret_message = executing_this_will_give_you_a_secret_message()
	print(secret_message)
	
	var yelling = your_message_but_uppercase("Hello world!!!")
	print(yelling)

func say_message():
	print(message)

func say_message_but_changed():
	message = "Changed message inside say_message_but_changed"
	print(message)

func say_message_with_inner_variable():
	var message = "Message, but from scoped variable inside say_message_with_inner_variable"
	print(message)
	
func say_message_but_you_tell_me_the_message(message):
	print(message)

func executing_this_will_give_you_a_secret_message():
	return "This is a secret message"

func your_message_but_uppercase(message):
	return message.to_upper()
