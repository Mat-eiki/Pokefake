class_name Player
extends CharacterBody2D

@export var movement_speed = 100
var input: Vector2 = Vector2.ZERO

func get_direction():
	input.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	input.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	input = input.normalized()

func player_movement():
	velocity = input * movement_speed

func _physics_process(delta):
	get_direction()
	player_movement()
	move_and_slide()
