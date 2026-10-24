extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	var tween = create_tween()
	tween.tween_property($CanvasLayer/ColorRect, "color:a", 1, 1)
	await tween.finished
	get_tree().change_scene_to_file("res://win.tscn")
