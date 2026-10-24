extends RigidBody2D
var target = 1
var startposition : Vector2
func _ready() -> void:
	startposition = global_position
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		target *= -1
	if global_position.y > startposition.y-target * 4 - 4 and target == 1 : 
		linear_velocity.y = -50
		if not global_position.y > startposition.y-target * 4 - 4:
			global_position.y = startposition.y-target

	elif global_position.y < startposition.y-target * 4 - 4 and target == -1: 
		linear_velocity.y = 50
		if not global_position.y < startposition.y-target * 4 - 4:
			global_position.y = startposition.y-target
	else : global_position.y = startposition.y-target * 4 - 4
	#$Switch.scale.y = move_toward($Switch.scale.y, -target, delta * 8)
