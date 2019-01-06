extends ConfirmationDialog

func _on_Exit_button_pressed():
	self.popup()

func _on_Exit_game_confirmation_box_confirmed():
	get_tree().quit()
	
