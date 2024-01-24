extends CharacterBody2D

@onready var animation_tree: AnimationTree = %AnimationTree

var direction: Vector2 = Vector2.ZERO
var is_attacking

func _ready():
	animation_tree.active = true
	
func _process(delta):
	update_animation_parameters()

func _physics_process(delta):
	if !is_attacking:
		direction = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized()
		velocity = direction * 100
		move_and_slide()
	

func update_animation_parameters():
	if velocity == Vector2.ZERO:
		animation_tree["parameters/conditions/idle"] = true
		animation_tree["parameters/conditions/is_walking"] = false
	else:
		animation_tree["parameters/conditions/idle"] = false
		animation_tree["parameters/conditions/is_walking"] = true
		
	if Input.is_action_just_pressed("light_attack"):
		animation_tree["parameters/conditions/attack"] = true
	else:
		animation_tree["parameters/conditions/attack"] = false
		
		
	if direction != Vector2.ZERO:
		animation_tree["parameters/Idle/blend_position"] = direction
		animation_tree["parameters/Walk/blend_position"] = direction
		animation_tree["parameters/Attack/blend_position"] = direction
	


func _on_animation_tree_animation_started(anim_name):
	if anim_name.contains("attack"):
		is_attacking = true


func _on_animation_tree_animation_finished(anim_name):
	if anim_name.contains("attack"):
		is_attacking = false




func _on_hitbox_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage()
