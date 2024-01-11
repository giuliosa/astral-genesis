class_name Hub
extends Node

var hub_doors: int
var rooms = []

func create_hub_doors(doors: int, deep: int):
	hub_doors = doors
	
	if deep > 0:
		deep -= 1
		for i in range(hub_doors):
			#print("Room")
			#create_room_instance(deep)
			match randi() % 5 + 1:
				1:
					print("Hub")
					create_hub_instance(deep)
				2:
					print("Hub")
					create_hub_instance(deep)
				3:
					print("Room")
					create_room_instance(deep)
				4:
					print("Room")
					create_room_instance(deep)
				5:
					print("Room")
					create_room_instance(deep)
	else:
		print("final room from hub")
	
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
