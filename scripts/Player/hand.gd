extends RigidBody2D

export(int) var id = 0

func _ready():
	PlayerValues.connect("slot"+str(id), self, "_on_slot_changed")
	PlayerValues.connect("toggleSlot"+str(id), self, "_on_slot_toggle")
	

func _process(delta):
	get_child(0).flip_h = bool(PlayerValues.direction-1)

func _on_slot_toggle():
	get_child(0).disable = not get_child(0).disable

