extends Node2D
var target = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		target *= -1

	$Node2D.position.y = move_toward($Node2D.position.y, -target * 4 - 4, delta * 64)
	$Switch.scale.y = move_toward($Switch.scale.y, -target, delta * 8)
