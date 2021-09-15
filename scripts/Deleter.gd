extends Node2D

func _on_VisibilityNotifier2D_screen_exited():
	get_parent().queue_free()
	print("a")


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	get_parent().queue_free()
	print("a")
