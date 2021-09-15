extends KinematicBody2D

var velocity = Vector2(1,1)
var direction = 1
var speed = 120

var move = Vector2.ZERO

func _ready():
	CicleManager.connect("quarta", self, "_hit")

func _hit(val):
	$tween.interpolate_property(self, "move",
		velocity * direction * speed,
		Vector2.ZERO,
		0.5, Tween.TRANS_LINEAR
		)
	$tween.start()
	
	$Song.play()
	
	direction *= -1

func _physics_process(delta):
	move_and_slide(move)
