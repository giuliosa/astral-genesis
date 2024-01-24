extends Node2D

@onready var transition = %Transition

func _ready():
	transition.play("fade_in")

func _on_stairs_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/World/Test-world.tscn")


func _on_exit_room_body_entered(body):
	get_tree().change_scene_to_file("res://Scenes/World/Levels/level_01.tscn")
