extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "warlock"),
	character(Right2, "sword"),
	say(Right, "..."),
	say(Right, "I found my sword..."),
	say(Right, "It came out of the sky..."),
	say(Left, "Maybe it's a sign."),
	say(Right, "..."),
	say(Right, "I think I'll visit the priest."),
	say(Right, "Later."),
	say(Right, "Maybe some day."),
	say(Left, "Or in a second life."),
	say(Right, "Not sure I'm not on my second life right now."),
	done()
]
