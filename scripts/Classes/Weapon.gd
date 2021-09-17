extends AnimatedSprite

class_name Weapon

var disable := true setget _setDisable, is_disabled

export(int) var maxBeats := 4

export(Dictionary) var beats

func _setDisable(value):
	disable = value
	set_visible(not value)

func is_disabled():
	return disable

func _ready():
	CicleManager.connect("quarta", self, "_isBeated")
	visible = not disable

func _isBeated(beat):
	if not disable and str(beat) in beats:
		self.call(beats[str(beat)])
