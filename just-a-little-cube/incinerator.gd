extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start()


func start():
	for i in 10 : 
		var block = preload("res://cubefake.tscn").instantiate()
		block.position.x = randf() * 10 - 5
		block.z_index = -1
		add_child(block)
		await get_tree().create_timer(0.02).timeout
	await get_tree().create_timer(2).timeout
	for i in 15 : 
		var block = preload("res://cubefake.tscn").instantiate()
		block.position.x = randf() * 10 - 5
		block.z_index = -1
		add_child(block)
		await get_tree().create_timer(0.02).timeout
	await get_tree().create_timer(3).timeout
 
	for i in 30 : 
		var block = preload("res://cubefake.tscn").instantiate()
		block.position.x = randf() * 10 - 5
		block.z_index = -1
		add_child(block)
		await get_tree().create_timer(0.015).timeout
	var block2 = preload("res://cube.tscn").instantiate()
	block2.z_index = -1
	block2.collision_mask = 1
	add_child(block2)
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://level_1.tscn")
