extends StreamPlayer

var bg_music_stream = ['res://Sound/copycat.ogg', 'res://Sound/happy bgm.ogg', 'res://Sound/endrit_tone.ogg',
						'res://Sound/Bouncy.ogg', 'res://Sound/Moving higher.ogg','res://Sound/Neon Runner.ogg']

func _ready():
	# Set the mood for each level! Match the music to each color.
	# Here's how the music breaks down:
	#	'cea7e5' => ?
	#   'f5fd99' => 'copycat.ogg'
	#   'b7ecfe' =>'happy bgm.ogg'
	#   'fd9e9e' => 'Bouncy.ogg'
	#   'd8d8d8' => 'endrit_tone.ogg'
	#   'DB9DC5' => 'Moving higher.ogg'
	#	'fcfff6' => 'Neon Runner.ogg'
	if global.current_palette[0] == 'f5fd99':
		var current_music = load( bg_music_stream[0] )
		set_stream(current_music)
	elif global.current_palette[0] == 'b7ecfe':
		var current_music = load( bg_music_stream[1] )
		set_stream(current_music)
	elif global.current_palette[0] == 'fd9e9e':
		var current_music = load( bg_music_stream[2] )
		set_stream(current_music)
	elif global.current_palette[0] == 'd8d8d8':
		var current_music = load( bg_music_stream[3] )
		set_stream(current_music)
	elif global.current_palette[0] == 'DB9DC5':
		var current_music = load( bg_music_stream[4] )
		set_stream( current_music )
	elif global.current_palette[0] == 'fcfff6':
		var current_music = load ( bg_music_stream[5] )
		set_stream( current_music )
	else:
		var current_music = load( bg_music_stream[0] )
		set_stream(current_music)
	play()
	set_process( true )

func _process(delta):
	if not global.sound_enabled and is_playing():
		set_paused( true )
	else:
		set_paused( false )