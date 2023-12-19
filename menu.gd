extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_vs_bot_pressed():
	Global.pointsp1 = 0
	Global.pointsp2 = 0
	get_tree().change_scene_to_file("res://mesa.tscn")


func _on_pvp_pressed():
	Global.pointsp1 = 0
	Global.pointsp2 = 0
	get_tree().change_scene_to_file("res://mesa_1_pv_2p.tscn")
	


func _on_solo_pressed():
	Global.pointsp1 = 0
	Global.pointsp2 = 0
	get_tree().change_scene_to_file("res://mesa_pv_p.tscn")
