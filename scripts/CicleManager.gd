extends Node2D

export(float) var bpm = 120

var delay = bpm/60/4/4

var batida = 0
var quarta = 0
var oitava = 0


signal oitava
signal quarta
signal batida

func _ready():
	$timer.wait_time = delay
	$timer.start()
	
	emit_signal("quarta", quarta)
	emit_signal("batida", batida)
	emit_signal("oitava", oitava)

func _oitava():
	oitava += 1
	
	if oitava == 4:
		oitava = 0
		quarta += 1
		emit_signal("quarta", quarta)
	
	if quarta == 4: 
		quarta = 0
		batida += 1
		emit_signal("batida", batida)
	
	if batida == 4: 
		batida = 0

	emit_signal("oitava", oitava)
	print(oitava)
