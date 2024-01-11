class_name Room
extends Node

var room_doors: int
var rooms = []

func create_room_doors(doors: int, deep: int):
	room_doors = doors
	if deep > 0:
		deep -= 1
		for i in range(room_doors):	
			match randi() % 5 + 1:
				1:
					print("hub")
					create_hub_instance(deep)
				2:			
					print("room")
					create_room_instance(deep)
				3:			
					print("room")
					create_room_instance(deep)
				4:
					print("room")
					create_room_instance(deep)
				5:
					print("special")
					create_special_room_instance()
	else:
		print("final room froom room")
	#if new_room.room_type:
		#new_room.door_id = id
		#add_child(new_room)
	#elif new_corridor.room_type:
		#new_corridor.door_id = id
		#add_child(new_corridor)
		#new_corridor.create_room_or_stair(id)

func create_hub_instance(deep: int):
	var new_hub = preload("res://Scenes/World/Dungeon creator/Hub.tscn").instantiate()
	new_hub.create_hub_doors(randi() % 3 + 1, deep)
	rooms.append(new_hub)
	add_child(new_hub)

func create_room_instance(deep: int):
	var new_room = preload("res://Scenes/World/Dungeon creator/room.tscn").instantiate()
	new_room.create_room_doors(randi() % 3 + 1, deep)
	rooms.append(new_room)
	add_child(new_room)
	
func create_special_room_instance():
	var new_room = preload("res://Scenes/World/Dungeon creator/special_room.tscn").instantiate()
	new_room.create_special_room()
	rooms.append(new_room)
	add_child(new_room)

func create_final_room_instance():
	var new_room = preload("res://Scenes/World/Dungeon creator/special_room.tscn").instantiate()
	rooms.append(new_room)
	add_child(new_room)
