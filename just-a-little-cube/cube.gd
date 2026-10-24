extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if linear_velocity.x < 35 :
		constant_force.x = 70 - linear_velocity.x
	else : constant_force.x = 0
	$Littlecube.global_rotation = 0


func _lose(body: Node2D) -> void:
	get_tree().reload_current_scene()
