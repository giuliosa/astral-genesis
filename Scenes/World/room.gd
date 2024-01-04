class_name Room
extends Node

var room_type: RoomType

var doors: int

enum RoomType {
	SMALL,
	MEDIUM,
	ALLOGATED,
	BIG,
	STAIRS
}

func createRoomOrStair(num: int):
	match num:
		1:
			doors = 0
			room_type = RoomType.SMALL
		2:
			doors = 0
			room_type = RoomType.MEDIUM
		3:
			doors = 0
			room_type = RoomType.MEDIUM
		4:
			doors = 0
			room_type = RoomType.ALLOGATED
		5:
			doors = 0
			room_type = RoomType.BIG
		6:
			doors = 1
			room_type = RoomType.STAIRS
