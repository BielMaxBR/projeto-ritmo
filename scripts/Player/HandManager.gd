extends Node2D


func _ready():
	var hands = get_tree().get_nodes_in_group("Hands")

	for i in range(0,len(hands)):
		var hand = hands[i]
		var position2d = get_node("position"+str(i+1))
		var pin = get_node("pinJoint"+str(i+1))
		var aaa = hand.get_path()
		
		hand.global_position = position2d.global_position
		
		pin.set_node_a(hand.get_path())
		pin.set_node_b(position2d.get_path())
		
