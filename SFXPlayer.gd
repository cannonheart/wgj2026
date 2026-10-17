extends Node

func PlaySound(path:String):
	var Stream = AudioStreamPlayer.new()
	Stream.stream = load(path)
	get_tree().get_root().add_child(Stream)
	Stream.play()
