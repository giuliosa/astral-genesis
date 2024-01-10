extends Node


func _ready():
	print("Inicializando dungeon")
	var new_stair = preload("res://Scenes/World/Dungeon creator/stairs.tscn").instantiate()
	new_stair.doors = 1
	new_stair.floor = 0
	print("Andar:", new_stair.floor)
	new_stair.create_corridor()
	add_child(new_stair)
	
