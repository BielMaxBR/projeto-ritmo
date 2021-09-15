extends Node2D

onready var hands = get_tree().get_nodes_in_group("Hands")

func _ready():

	for i in range(0,len(hands)):
		var hand = hands[i]
		var position2d = get_node("position"+str(i+1))
		var pin = get_node("pinJoint"+str(i+1))
		var aaa = hand.get_path()
		
		hand.global_position = position2d.global_position
		
		pin.set_node_a(hand.get_path())
		pin.set_node_b(position2d.get_path())

func _process(delta):
	var slot1 = Input.is_action_just_pressed("slot1")
	var slot2 = Input.is_action_just_pressed("slot2")
	var slot3 = Input.is_action_just_pressed("slot3")
	var slot4 = Input.is_action_just_pressed("slot4")

	scale.x = PlayerValues.direction
