extends RigidBody2D
const SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Down"):
		linear_velocity.y = SPEED
	elif Input.is_action_pressed("Up"):
		linear_velocity.y = -SPEED
	else : linear_velocity.y *= 0.001**delta

	if Input.is_action_just_pressed("Down") or Input.is_action_just_pressed("Up"):
		$AudioStreamPlayer2D.pitch_scale = 0.8 if Input.is_action_just_pressed("Down") else 1.4
		$AudioStreamPlayer2D.play()
