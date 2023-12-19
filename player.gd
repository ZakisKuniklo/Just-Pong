extends CharacterBody2D


const SPEED = 10


func _physics_process(delta):
	if Input.is_action_pressed("ui_up")  and position.y > 30:
		position.y -= SPEED 
	elif Input.is_action_pressed("ui_down") and position.y <541:
		position.y += SPEED


