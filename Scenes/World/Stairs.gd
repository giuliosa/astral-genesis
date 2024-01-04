class_name Stairs
extends Node

var doors: int

func createCorridor(num: int):
	var new_corridor = preload("res://Scenes/World/corridor.gd").new()
	match num:
		1:
			new_corridor.doors = 1
		2:
			new_corridor.doors = 2
		3:
			new_corridor.doors = 2
		4:
			new_corridor.doors = 2
		5:
			new_corridor.doors = 3
		6:
			new_corridor.doors = 3
	
	add_child(new_corridor)
