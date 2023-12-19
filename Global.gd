extends Node

var pointsp1 = 0
var pointsp2 = 0
var mode = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("exit"):
		get_tree().change_scene_to_file("res://menu.tscn")

