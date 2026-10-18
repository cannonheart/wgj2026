extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "smith"),
	say(Right, "..."),
	say(Left, "..."),
	say(Left2, "Yip..."),
	say(Right, "..."),
	say(Left, "Where is your roof?"),
	say(Right, "I don't know."),
	say(Right, "There was a fwoosh, and then it was gone."),
	say(Right, "The kids that were there are also gone."),
	say(Left, "I hope they're alright."),
	say(Right, "Oh I think they're fine. Can't have flown that far."),
	done()
]
