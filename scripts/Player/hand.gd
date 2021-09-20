extends RigidBody2D

export(int) var id = 0

func _ready():
	PlayerValues.connect("slot", self, "_on_slot_changed")
	

func _process(delta):
	get_child(0).flip_h = bool(PlayerValues.direction-1)

func _on_slot_changed(value: Dictionary):
	if value.id != id: return

	match value.type:
		Constants.signals.change:
			pass # isso eu faço dps
		Constants.signals.toggle:
			get_child(0).disable = not get_child(0).disable

