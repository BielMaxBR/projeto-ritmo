extends KinematicBody2D

var vel = Vector2.ZERO
export var speed = 90
export var gravity = 450
export var jump_force = 216

func _ready():
	pass

func input():
	vel.x = 0
	
	var stopJump = Input.is_action_just_released('jump')
	#var desfire = Input.is_action_just_released('fire')
	var jump = Input.is_action_just_pressed('jump')
	#var fire = Input.is_action_just_pressed('fire')
	var right = Input.is_action_pressed('right')
	var left = Input.is_action_pressed('left')
	var down = Input.is_action_pressed('down')

	if is_on_floor():
		vel.y = 0
	if jump and is_on_floor():
		vel.y = -jump_force
	if stopJump and not is_on_floor() and vel.y < 0:
		vel.y /= 3
	
	vel.x = speed * (right - left)
	
func _physics_process(delta):
	input()
	vel.y += gravity * delta
	
	move_and_slide(vel,Vector2.UP)
