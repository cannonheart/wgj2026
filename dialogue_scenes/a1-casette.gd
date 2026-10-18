extends Story

func _ready():
	setup(story)


var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	say(Left, "Scruffy, did you turn on this music?"),
	say(Left2, "Arf arf."),
	say(Left, "Yea no."),
	say(Left, "We're not going to the store to this music."),
	done(),
]
