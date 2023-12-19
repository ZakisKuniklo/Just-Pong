extends CharacterBody2D

signal posicao(posicao)
signal colidiu
var accCount = 0
var speed = Vector2(300,300)


func _physics_process(delta):
	
	var collision_info = move_and_collide(speed * delta)
	if collision_info:
		speed = speed.bounce(collision_info.get_normal())
		changeSpeed()
		print(str(speed.x) + " " + str(speed.y))
		tocarSom()
		if collision_info.get_collider() is AnimatableBody2D:
			emit_signal("colidiu")
		if collision_info.get_collider().is_in_group("golEsq"):
			reset()
			speed *= Vector2(0.7,0.7)
			Global.pointsp2 +=1
		if collision_info.get_collider().is_in_group("golDir"):
			reset()
			speed *= Vector2(0.7,0.7)
			Global.pointsp1 +=1
		

	emit_signal("posicao",position)

func reset():
	position = Vector2(520,272)

func tocarSom():
	$AudioStreamPlayer2D.play()

func changeSpeed():
	speed *= Vector2(1.015,1.015)
	#print(accCount)
	#if accCount < 3:
	#	speed *= Vector2(randf_range(1.1,1.5),randf_range(1.1,1.5))
	#	accCount += 1
	#elif accCount >= 3 and accCount <= 5:
	#	speed *= Vector2(randf_range(0.7,0.9),randf_range(0.7,0.9))
	#	accCount += 1
	#else:
	#	accCount = 0
	#	speed *= Vector2(1.1,1.1)
