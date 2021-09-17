extends KinematicBody2D

class_name Projectile

export var direction: Vector2
export var EnemyGroup: String
export var speed: float
export var damage: float

func _physics_process(delta):
	move_and_slide(direction*speed)

func _ready():
	if has_node("Area2D"):
		get_node("Area2D").connect("body_entered", self, "_hit")
	else:
		printerr("o nó ", self.name, " não possui o Node 'Area2D'")

func _hit(body):
	if body is TileMap:
		if self.has_method("_delete"):
			self.call("_delete")
		else: self.queue_free()

	if body.is_in_group(EnemyGroup):
		if body.has_method("getDamage"):
			body.getDamage(damage)
			
			if self.has_method("_delete"):
				self.call("_delete")
			else: self.queue_free()
