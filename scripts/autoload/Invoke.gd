extends Node


func projectile(AimName: String, position: Vector2, direction: Vector2, EnemyGroup: String, scene: NodePath):
	var aim = load("res://Objects/Weapons/Aim/"+AimName+".tscn").instance()
	
	aim.position = position
	aim.direction = direction
	aim.EnemyGroup = EnemyGroup

	get_node(scene).add_child(aim)
