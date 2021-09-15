extends RigidBody2D

func _process(delta):
	get_child(0).flip_h = bool(PlayerValues.direction-1)
