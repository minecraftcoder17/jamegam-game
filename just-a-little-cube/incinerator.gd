extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start()
	pass # Replace with function body.


func start():
	for i in 20 : 
		var block = preload("res://cubefake.tscn").instantiate()
		block.position.x = randf() * 10 - 5
		add_child(block)
		await get_tree().create_timer(0.05).timeout
