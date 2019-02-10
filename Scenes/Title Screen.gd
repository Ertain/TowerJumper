extends Node2D

onready var bg_music = get_node("BG music")
onready var fade_out = get_node("Title screen container/fade-out rect/fade-out anim")
onready var fade_out_rect = get_node("Title screen container/fade-out rect")
onready var blinking_text_anim = get_node("Title screen container/bg color/VBoxContainer/Start container/Blinking text")
onready var title_screen_container = get_node("Title screen container")

func _ready():
	
	# Stretch the container to the size of the screen
	var screen_size = OS.get_screen_size()
	var port_size = get_tree().get_root().get_visible_rect().size
	if screen_size.length() > port_size.length():
		title_screen_container.set_size( Vector2( screen_size.x, title_screen_container.get_size().y ) )
	
	# Start the background music
	bg_music.play()
	set_process_input(true)
	
	# Start the blinking "tap to play" text.
	blinking_text_anim.play("Blinking text")

func _input(event):
	if event.type == InputEvent.SCREEN_TOUCH && event.pressed:
		fade_out_rect.show()
		fade_out.play("fade-out anim")

# Fade out the scene
func _on_Start_game_pressed():
	fade_out_rect.show()
	fade_out.play("fade-out anim")

# Once the fade-out animation has finished, switch the scene.
func _on_fadeout_anim_finished():
	get_tree().change_scene("res://Scenes/Input_Handler.tscn")
