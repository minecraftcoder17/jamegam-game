extends RigidBody2D
var target = 1
var startposition : Vector2
func _ready() -> void:
	startposition = global_position
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		target *= -1
		$AudioStreamPlayer2D.pitch_scale = 0.9 + randf() * 0.1
		$AudioStreamPlayer2D.play()
	if global_position.y > startposition.y-target * 8 - 8 and target == 1 : 
		linear_velocity.y = -100

	elif global_position.y < startposition.y-target * 8 - 8 and target == -1: 
		linear_velocity.y = 100
	else : 
		global_position.y = startposition.y-target * 8 - 8
		linear_velocity.y = 0
	#$Switch.scale.y = move_toward($Switch.scale.y, -target, delta * 8)
