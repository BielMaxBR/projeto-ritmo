extends Node

var slot1 = "Lemon" setget _slot1
var slot2 = null setget _slot2
var slot3 = null setget _slot3
var slot4 = null setget _slot4

signal slot1(value)
signal slot2(value)
signal slot3(value)
signal slot4(value)

signal toggleSlot1
signal toggleSlot2
signal toggleSlot3
signal toggleSlot4

export(int) var life := 10

export(NodePath) var playerParent

var direction := 1

func _process(delta):
	var input = Input.get_action_strength("right") - Input.get_action_strength("left")
	if input != 0:
		direction = input

func _slot1(value):
	emit_signal("slot1", value)
	
func _slot2(value):
	emit_signal("slot2", value)
	
func _slot3(value):
	emit_signal("slot3", value)
	
func _slot4(value):
	emit_signal("slot4", value)

