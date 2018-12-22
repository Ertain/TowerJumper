extends Node2D

onready var bg_music = get_node("BG music")

func _ready():
	bg_music.play()

func _on_Start_game_pressed():
	get_tree().change_scene("res://Scenes/Input_Handler.tscn")
