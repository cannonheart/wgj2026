extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "bob"),
	say(Left, "well this fucking rocks"),
	choice([
		[
			"hello",
			say(Right, "you said hello?"),
		],
		[
			"bye",
			say(Left, "you said bye?"),
		]
	]),
	say(Right, "and we're done")
]
