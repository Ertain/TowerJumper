extends Node2D

# Most of these are used to center the assets in the scene
onready var bg_music = get_node("BG music")
onready var fade_out = get_node("fade-out rect/fade-out anim")
onready var fade_out_rect = get_node("fade-out rect")
onready var blinking_text_anim = get_node("Start container/Blinking text")
onready var background_panel = get_node("background color")
onready var start_container = get_node("Start container")
onready var title_center = get_node("Title Center")

func _ready():
	# Actually center the title screen logo
	var screen_size = OS.get_screen_size()
	background_panel.set_size( Vector2(screen_size.x, background_panel.get_rect().size.y) )
	title_center.set_size( Vector2( screen_size.x, title_center.get_rect().size.y ) )
	start_container.set_size( Vector2( screen_size.x, start_container.get_rect().size.y ) ) 
	fade_out_rect.set_size( Vector2( screen_size.x, fade_out_rect.get_rect().size.y ) )
	# Start the background music
	bg_music.play()
	set_process_input(true)
	# Start the "tap to play" text blinking.
	blinking_text_anim.play("Blinking text")

func _input(event):
	if event.type == InputEvent.SCREEN_TOUCH && event.pressed:
		get_node("fade-out rect").show()
		fade_out.play("fade-out anim")

# Fade out the scene
func _on_Start_game_pressed():
	get_node("fade-out rect").show()
	fade_out.play("fade-out anim")

# Once the fade-out animation has finished, switch the scene.
func _on_fadeout_anim_finished():
	get_tree().change_scene("res://Scenes/Input_Handler.tscn")
