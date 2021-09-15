extends KinematicBody2D

var vel = Vector2.ZERO
export var speed = 90
export var gravity = 450
export var jump_force = 216

func _ready():
	PlayerValues.playerParent = get_parent().get_path()

func input_movement():
	vel.x = 0
	
	var stopJump = Input.is_action_just_released('jump')
	var jump = Input.is_action_just_pressed('jump')
	var right = Input.get_action_strength('right')
	var left = Input.get_action_strength('left')

	if is_on_floor():
		vel.y = 0
	if jump and is_on_floor():
		vel.y = -jump_force
	if stopJump and not is_on_floor() and vel.y < 0:
		vel.y /= 3

	vel.x = speed * (right - left)
	
func _physics_process(delta):
	input_movement()
	vel.y += gravity * delta

	move_and_slide(vel,Vector2.UP)
	pass
