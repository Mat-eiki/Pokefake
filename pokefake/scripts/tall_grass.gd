extends Node2D

var rng = RandomNumberGenerator.new()

func _on_area_2d_body_entered(body: Node2D) -> void:
	var num = rng.randi_range(1, 20)
	print(num)
	if num >= 16:
		get_tree().change_scene_to_file("res://scenes/battle_scene.tscn")
