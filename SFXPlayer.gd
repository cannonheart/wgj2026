extends Node

var Voices = {
				"yana" : "res://Audio/Voice/MCVoice.tres",
				"scruffles" : "res://Audio/Voice/Dog.tres",
				"warlock" : "res://Audio/Voice/Warlock.tres",
				"mother" : "res://Audio/Voice/Mother.tres",
				"smith" : "res://Audio/Voice/Smith.tres",
				"woman" : "res://Audio/Voice/Lady.tres",
				"sword" : "res://Audio/Voice/Sword.tres"
			}

func PlaySound(path:String, volume = 1):
	var Stream = AudioStreamPlayer.new()
	Stream.stream = load(path)
	get_tree().get_root().add_child(Stream)
	Stream.volume_linear = volume
	Stream.play()
	Stream.finished.connect(SoundOver.bind(Stream))
	
func PlayVoice(key: String):
	if (Voices.keys().has(key)):
		PlaySound(Voices[key])
	else:
		PlaySound("res://Audio/Voice/Default.tres")

func SoundOver(Sound: AudioStreamPlayer):
	Sound.queue_free()
