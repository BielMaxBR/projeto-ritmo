extends Node2D

onready var hands = get_tree().get_nodes_in_group("Hands")

func _ready():
	for i in range(0,len(hands)):
		var hand = hands[i]
		var position2d = get_node("position"+str(i+1))
		var pin = get_node("pinJoint"+str(i+1))

		hand.global_position = position2d.global_position
		
		pin.set_node_a(hand.get_path())
		pin.set_node_b(position2d.get_path())

func _process(delta):
	for i in range(1, 5):
		if Input.is_action_just_pressed("slot" + str(i)):
			PlayerValues.toggleSlot(i)

	scale.x = PlayerValues.direction
