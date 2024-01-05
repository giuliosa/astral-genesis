class_name Stairs
extends Node

var doors: int
var door_id: int
var floor: int
var room_type: RoomType

enum RoomType {
	SMALL,
	MEDIUM,
	ALLOGATED,
	BIG,
	STAIRS
}

func create_corridor():
	var new_corridor = preload("res://Scenes/World/corridor.tscn").instantiate()
	new_corridor.door_id = 1
	match randi() % 6 + 1:
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
	
	for i in range(new_corridor.doors):		
		new_corridor.create_room_or_stair(i+1, floor)
