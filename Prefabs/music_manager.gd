extends Node

@export var Songs = {"Overworld": preload("res://Audio/Music/wgj.mp3")}

func SwitchMusic(songKey: String, fadeTime: float = 1.0):
	var tween = get_tree().create_tween()
	tween.tween_property($AudioStreamPlayer, "volume_db", -80.0, fadeTime)
	tween.tween_callback(StartNewTrack(songKey))
	
func StartNewTrack(songKey: String):
	$AudioStreamPlayer.stream = Songs[songKey]
	var tween = get_tree().create_tween()
	tween.tween_property($AudioStreamPlayer, "volume_db", 0, 1.0)
	
