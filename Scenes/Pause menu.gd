extends Node2D

func _on_return_to_game_pressed():
	print("Resume game!")
	get_node("/root/Control/Pause menu").hide()
	get_tree().set_pause(false)
