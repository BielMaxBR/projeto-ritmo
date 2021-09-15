extends Weapon

func _ready():
	beats["0"] = "shot"
	beats["1"] = "shot"
	beats["2"] = "shot"
	beats["3"] = "shot"
	disable = false

func shot():
	get_parent().apply_central_impulse(Vector2.LEFT*PlayerValues.direction*150)
	Invoke.projectile("Lemon", global_position, Vector2(PlayerValues.direction, 0), "Enemy", PlayerValues.playerParent)
