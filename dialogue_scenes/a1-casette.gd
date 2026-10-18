extends Story

func _ready():
	setup(story)


var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	say(Left, "Scruffy, did you turn on this music?"),
	say(Left2, "Arf arf."),
	say(Left, "..."),
	say(Left2, "Yip?"),
	say(Left, "We're not going to the store to this music."),
	say(Left, "I'll turn on something else."),
	done(),
]
