extends Control

var player1_hand
var player2_hand

func _ready():
	$Player1Input.visible = true
	$Player2Input.visible = false
	$Winner.visible = false

func go_to_player2_screen():
	$Player1Input.visible = false
	$Player2Input.visible = true

func go_to_winner_screen():
	$Player2Input.visible = false
	$Winner.visible = true
	
	if player1_hand == player2_hand:
		$Winner/Label.text = "Winner Player 2"
	else:
		$Winner/Label.text = "Winner Player 1"

func _on_Player1Hand1_pressed():
	player1_hand = 1
	go_to_player2_screen()


func _on_Player1Hand2_pressed():
	player1_hand = 2
	go_to_player2_screen()


func _on_Player2Hand1_pressed():
	player2_hand = 1
	go_to_winner_screen()


func _on_Player2Hand2_pressed():
	player2_hand = 2
	go_to_winner_screen()


func _on_Button_pressed():
	get_tree().reload_current_scene()
