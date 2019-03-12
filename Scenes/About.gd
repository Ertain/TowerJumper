extends Panel

func _ready():
	set_process_input(true)

func _on_About_button_pressed():
	if not self.is_visible():
		self.show()
	else:
		self.hide()

# The "About box" must disappear when the screen is pressed.
#func _input(event):
#	if event.type == InputEvent.SCREEN_TOUCH and event.is_pressed() and self.is_visible():
#		self.hide()

# The "About box" must disappear when the screen is pressed.
func _on_Okay_pressed():
	self.hide()
