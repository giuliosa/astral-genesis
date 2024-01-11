class_name SpecialRoom
extends Node

var special_room_name: String

func create_special_room():
	match randi() % 3 + 1:
		1: 
			special_room_name = "Lojinha"
		2:
			special_room_name = "Amigo"
		3:
			special_room_name = "Puzzle"
