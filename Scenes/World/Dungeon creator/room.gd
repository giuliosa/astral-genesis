class_name Room
extends Node

var doors: int
var door_id: int
var room_type: RoomType

enum RoomType {
	SMALL,
	MEDIUM,
	ALLOGATED,
	BIG,
	STAIRS
}

func create_room_or_stair(id: int, floor: int):
	var new_room = preload("res://Scenes/World/room.tscn").instantiate()
	var new_stair = preload("res://Scenes/World/stairs.tscn").instantiate()
	
	match randi() % 6 + 1:
		1:
			new_room.doors = 0
			new_room.room_type = RoomType.SMALL
		2:
			new_room.doors = 0
			new_room.room_type = RoomType.MEDIUM
		3:
			new_room.doors = 0
			new_room.room_type = RoomType.MEDIUM
		4:
			new_room.doors = 0
			new_room.room_type = RoomType.ALLOGATED
		5:
			new_room.doors = 0
			new_room.room_type = RoomType.BIG
		6:
			new_stair.doors = 1
			new_stair.room_type = RoomType.STAIRS
			
	if new_room.room_type:
		new_room.door_id = id
		add_child(new_room)
	elif new_stair.room_type:
		new_stair.door_id = id
		new_stair.floor = floor +1
		print("Andar:", new_stair.floor)
		add_child(new_stair)
		new_stair.create_corridor()
