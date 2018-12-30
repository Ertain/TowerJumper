extends ConfirmationDialog

onready var exit_game_button = get_node("../Exit button")

func _on_Exit_button_pressed():
	self.popup()

func _on_Exit_game_confirmation_box_confirmed():
	get_tree().quit()
	
