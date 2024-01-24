extends Area2D

@export var scene_to_teleport: PackedScene

@onready var transition = %Transition

func _on_body_entered(body):
	transition.play("fade_out")


func _on_transition_animation_finished(anim_name):
	get_tree().change_scene_to_file(scene_to_teleport.resource_path)
	

