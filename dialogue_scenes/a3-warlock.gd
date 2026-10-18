extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "warlock"),
	character(Right2, "sword"),
	say(Right, "..."),
	say(Right, "I found my sword."),
	say(Right, "It flew out of the sky and landed next to me."),
	say(Right2, "Aye! 't was a good stickin' landing to, right by her foo'."),
	say(Left, "Maybe it's a sign."),
	say(Right, "..."),
	say(Right, "I think I'll visit the priest."),
	say(Right, "Later."),
	say(Right2, "She won't ever! Ain't seen a pries' 'er 'ole life!"),
	say(Left, "You'll visit him in a second life."),
	say(Right, "I think I'm on my second life right now."),
	done()
]
