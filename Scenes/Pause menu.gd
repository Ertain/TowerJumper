extends Node2D

onready var confirm_dialog = get_node("Panel/Confirm dialog")

func _on_return_to_game_pressed():
	get_node("/root/Control/Pause menu").hide()
	get_tree().set_pause(false)

func _on_Exit_button_pressed():
	confirm_dialog.show()
