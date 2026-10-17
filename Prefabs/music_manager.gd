extends Node

@export var Songs = {"Overworld": preload("res://Audio/Music/wgj.mp3")}

func SwitchMusic(songKey: String):
	$AudioStreamPlayer.stream = Songs[songKey]
	$AudioStreamPlayer.play()
