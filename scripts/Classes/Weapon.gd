extends AnimatedSprite

class_name Weapon

var disable := true setget _setDisable, is_disabled

export(int) var maxBeats := 4

export(Dictionary) var beats

func _setDisable(value):
	visible = value

func is_disabled():
	return disable

func _ready():
	get_node('/root/CicleManager').connect("quarta", self, "_isBeated")


func _isBeated(beat):
	if not disable and str(beat) in beats:
		self.call(beats[str(beat)])
