extends Node

@export var Songs = {
					 #"Overworld": preload("res://Audio/Music/anime_music.mp3"),
					 #"Rock": preload("res://Audio/Music/RockMusic.mp3"),
					 #"Win": preload("res://Audio/Music/Win.mp3"),
					 #"Mystery": preload("res://Audio/Music/Mystery.mp3")
					}

func SwitchMusic(songKey: String, fadeTime: float = 1.0):
	var tween = get_tree().create_tween()
	tween.tween_property($AudioStreamPlayer, "volume_db", -80.0, fadeTime)
	tween.tween_callback(StartNewTrack(songKey))
	
func StartNewTrack(songKey: String):
	$AudioStreamPlayer.stream = Songs[songKey]
	var tween = get_tree().create_tween()
	tween.tween_property($AudioStreamPlayer, "volume_db", 0, 1.0)
	
