extends Node2D

export(float) var bpm = 120

var delay = bpm/60/4

var batida = 0
var meia = 0
var quarta = 0

func _ready():
	$timer.wait_time = delay
	$timer.start()

func _quarta():
	quarta += 1
	if quarta == 4: quarta = 0

	print(quarta)
