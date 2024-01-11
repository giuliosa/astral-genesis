extends Node


func _ready():
	print("Inicializando dungeon")
	create_dungeon()
	
func create_dungeon():
	var new_hub = preload("res://Scenes/World/Dungeon creator/Hub.tscn").instantiate()
	new_hub.create_hub_doors(randi() % 2 + 1, 4)
	add_child(new_hub)
