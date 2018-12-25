extends Node2D

onready var bg_music = get_node("BG music")
onready var fade_out = get_node("fade-out rect/fade-out anim")

func _ready():
	bg_music.play()

# Fade out the scene
func _on_Start_game_pressed():
	get_node("fade-out rect").show()
	fade_out.play("fade-out anim")

# Once the fade-out animation has finished, switch the scene.
func _on_fadeout_anim_finished():
	get_tree().change_scene("res://Scenes/Input_Handler.tscn")
