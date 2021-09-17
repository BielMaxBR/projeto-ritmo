extends CPUParticles2D


func _ready():
	emitting = true

func _process(delta):
	if not is_emitting():
		queue_free()
