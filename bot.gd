extends AnimatableBody2D

var speed = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
	

func follow(item):
	if item.x <566:
		if position.y < item.y and position.y <541:
			position.y += speed
		elif position.y > item.y and position.y > 30:
			position.y -= speed
	

func changeSpeed():
	if speed >= 1 and speed < 7:
		speed *= randf_range(0.9,1.5)
	

func _on_bola_posicao(y):
	follow(y)


func _on_bola_colidiu():
	changeSpeed()
