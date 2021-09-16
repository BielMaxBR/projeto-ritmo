extends Node2D

func _on_VisibilityNotifier2D_viewport_exited(viewport):
	get_parent().queue_free()
