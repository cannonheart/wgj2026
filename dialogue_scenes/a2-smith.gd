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
	say(Left, "I don't think I want to know."),
	say(Right, "I don't know what to know."),
	say(Right, "Except that my roof is gone."),
	say(Right, "There was a fwoosh, and then it was gone."),
	say(Right, "There is noone on the second floor now."),
	say(Right, "They're also gone."),
	say(Left, "Oh."),
	say(Left, "Do you think they are alright?"),
	say(Right, "..."),
	done()
]
