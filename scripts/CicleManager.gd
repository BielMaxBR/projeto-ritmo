extends Node2D

export(float) var bpm = 120

var delay = bpm/60/4

var batida = 0
var quarta = 0

signal quarta
signal batida

func _ready():
	$timer.wait_time = delay
	$timer.start()
	
	emit_signal("quarta", quarta)
	emit_signal("batida", batida)

func _quarta():
	quarta += 1
	emit_signal("quarta", quarta)
	
	if quarta == 4: 
		quarta = 0
		batida += 1
	emit_signal("batida", batida)
	
	if batida == 4: 
		batida = 0

	print(quarta)
