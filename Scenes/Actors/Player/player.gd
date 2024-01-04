extends CharacterBody2D

@onready var animation_tree: AnimationTree = %AnimationTree

var direction: Vector2 = Vector2.ZERO

func _ready():
	animation_tree.active = true
	
func _process(delta):
	update_animation_parameters()

func _physics_process(delta):
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down").normalized()
	velocity = direction * 200
	move_and_slide()
	

func update_animation_parameters():
	if velocity == Vector2.ZERO:
		animation_tree["parameters/conditions/idle"] = true
		animation_tree["parameters/conditions/is_walking"] = false
	else:
		animation_tree["parameters/conditions/idle"] = false
		animation_tree["parameters/conditions/is_walking"] = true
	if direction != Vector2.ZERO:
		animation_tree["parameters/Idle/blend_position"] = direction
		animation_tree["parameters/Walk/blend_position"] = direction
	


