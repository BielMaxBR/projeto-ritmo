extends Node

export(Dictionary) var inventory := {
	"slot1": [0],
	"slot2": null,
	"slot3": null,
	"slot4": null
}

export(int) var life := 10

export(NodePath) var playerParent

var direction := 1

func _process(delta):
	var input = Input.get_action_strength("right") - Input.get_action_strength("left")
	if input != 0:
		direction = input
