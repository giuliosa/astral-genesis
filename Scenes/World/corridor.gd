class_name Corridor
extends Node

var doors: int
var room_type: RoomType

enum RoomType {
	SMALL,
	MEDIUM,
	ALLOGATED,
	BIG,
	STAIRS
}

func createRoomOrStair(num: int):
	var new_room = preload("res://Scenes/World/room.gd").new()
	var new_stair = preload("res://Scenes/World/Stairs.gd").new()
	match num:
		1:
			doors = 1
			room_type = RoomType.SMALL
		2:
			doors = 1
			room_type = RoomType.MEDIUM
		3:
			doors = 1
			room_type = RoomType.MEDIUM
		4:
			doors = 2
			room_type = RoomType.ALLOGATED
		5:
			doors = 2
			room_type = RoomType.BIG
		6:
			doors = 1
			room_type = RoomType.STAIRS
