extends Node2D

export(int) var maxBeats = 4
export(float) var bpm = 120
export(bool) var isRunning = true

var actualBeat: float = 0

signal beat(beat)

func _ready():
	var timerDelay = 1/(bpm/60)
	$BeatTimer.wait_time = timerDelay

func _process(delta) -> void:
	if isRunning and $BeatTimer.is_stopped():
		$BeatTimer.start()
		pass
	elif not isRunning and not $BeatTimer.is_stopped():
		$BeatTimer.paused = false
	else:
		$BeatTimer.paused = true
	

func _on_BeatTimer_timeout():
	actualBeat+=1
	if actualBeat > maxBeats:
		actualBeat = 1
	emit_signal("beat", actualBeat)
