extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	say(Left, "Scruffles?"),
	say(Left2, "Yip?"),
	say(Left, "I forgot to buy bread."),
	done()
]
