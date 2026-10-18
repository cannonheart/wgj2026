extends Node

var Voices = {"yana" : "res://Audio/Voice/MCVoice.tres"}


func PlaySound(path:String):
	var Stream = AudioStreamPlayer.new()
	Stream.stream = load(path)
	get_tree().get_root().add_child(Stream)
	Stream.play()
	Stream.finished.connect(SoundOver.bind(Stream))
	
func PlayVoice(key: String):
	if (Voices.keys().has(key)):
		PlaySound(Voices[key])
	else:
		PlaySound("res://Audio/Voice/Default.tres")

func SoundOver(Sound: AudioStreamPlayer):
	Sound.queue_free()
