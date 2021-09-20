extends Node


var inventory: Dictionary = {
	"slot1": "Lemon",
	"slot2": null,
	"slot3": null,
	"slot4": null,
}# setget _set_inventory

signal slot(value)

export(int) var life := 10
export(NodePath) var playerParent

var direction := 1

func _process(delta):
	var input = Input.get_action_strength("right") - Input.get_action_strength("left")
	if input != 0:
		direction = input

func setSlot(id: int, value: String):
	inventory["slot"+str(id)] = value
	var data: String = value
	
	self.emit_signal("slot", {
		"type": Constants.signals.change,
		"id": id,
		"data": data
	})

func toggleSlot(id: int):
	self.emit_signal("slot", {
		"type": Constants.signals.toggle,
		"id": id,
	})
