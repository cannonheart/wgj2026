extends Node2D
class_name Music

var tracks: Dictionary[String, AudioStreamPlayer] = {}


func _ready():
	for track in get_children():
		tracks.set(track.name, track)


func SwitchMusic(songKey: String, fadeTime: float = 1.0):
	print("switching song")
	for key in tracks:
		var track = tracks[key]
		if key != songKey:
			var tween = get_tree().create_tween()
			tween.tween_property(track, "volume_db", -80.0, fadeTime)
			tween.tween_callback(track.stop)
	
	StartNewTrack(songKey)


func StartNewTrack(songKey: String):
	Log.prn("Play fucking new song", songKey)
	var track = tracks[songKey]
	track.play()
	track.volume_db = -80.0
	
	var tween = get_tree().create_tween()
	tween.tween_property(track, "volume_db", 0, 1.0)


func stop_music():
	for key in tracks:
		var track = tracks[key]
		var tween = get_tree().create_tween()
		tween.tween_property(track, "volume_db", -80.0, 1.0)
		tween.tween_callback(track.stop)
