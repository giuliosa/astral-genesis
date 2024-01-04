extends Node


func _ready():
	print("Inicializando dungeon")
	var new_stair = preload("res://Scenes/World/Stairs.gd").new()
	new_stair.doors = 1
	new_stair.createCorridor(randi() % 6 + 1)
	add_child(new_stair)
	
