extends StreamPlayer

var bg_music_stream = ['res://Sound/copycat.ogg', 'res://Sound/happy bgm.ogg', 'res://Sound/endrit_tone.ogg', 'res://Sound/Bouncy.ogg']

func _ready():
	if global.level == 1:
		var current_music = load( bg_music_stream[1] )
		set_stream(current_music)
	elif global.level == 2:
		var current_music = load( bg_music_stream[2] )
		set_stream(current_music)
	elif global.level == 3:
		var current_music = load( bg_music_stream[3] )
		set_stream(current_music)
	play()
	set_process( true )

func _process(delta):
	if not global.sound_enabled and is_playing():
		set_paused( true )
	else:
		set_paused( false )