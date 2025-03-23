extends CharacterBody2D

func _process(delta: float) -> void:
	movement(delta)
	

func movement(x):
	if Input.is_action_pressed("ui_right"):
		global_position.x += 128*x
	if Input.is_action_pressed("ui_left"):
		global_position.x -= 128*x
	if Input.is_action_pressed("ui_up"):
		global_position.y -= 128*x
	if Input.is_action_pressed("ui_down"):
		global_position.y += 128*x
