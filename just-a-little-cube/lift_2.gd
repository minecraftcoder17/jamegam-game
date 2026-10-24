extends RigidBody2D
const SPEED = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("Right"):
		linear_velocity.x = SPEED
	elif Input.is_action_pressed("Left"):
		linear_velocity.x = -SPEED
	else : linear_velocity.x *= 0.001**delta
	
