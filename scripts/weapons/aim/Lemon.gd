extends Projectile


func _delete():
	var particle = load("res://particles/Particle.tscn").instance()
	particle.global_position = global_position
	get_node(PlayerValues.playerParent).add_child(particle)
	queue_free()
