extends KinematicBody2D

onready var manager = get_node('/root/CicleManager')

func _ready():
	manager.connect("quarta", self, "_hit")

func _hit(val):
	#$Song.play()
	pass
