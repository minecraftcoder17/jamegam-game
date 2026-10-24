extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start()


func start():
	for i in 10**10 : 
		var block = preload("res://cubefake.tscn").instantiate()
		block.position.x = randf() * 10 - 5
		block.z_index = -1
		add_child(block)
		await get_tree().create_timer(0.02).timeout
	await get_tree().create_timer(2).timeout
	for i in 30 : 
		var block = preload("res://cubefake.tscn").instantiate()
		block.position.x = randf() * 10 - 5
		block.z_index = -1
		add_child(block)
		await get_tree().create_timer(0.02).timeout
	await get_tree().create_timer(3).timeout
 
	var block = preload("res://cube.tscn").instantiate()
	block.z_index = -1
	add_child(block)
	await get_tree().create_timer(0.02).timeout
	await get_tree().create_timer(3).timeout
