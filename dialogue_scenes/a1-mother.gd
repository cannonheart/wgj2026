extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "mother"),
	say(Right, "Good evening."),
	choice([
		[
			"Good evening.",
			say(Left, "Good evening."),
			say(Left2, "Bark!"),
			say(Left, "We are going to the store to buy sandwiches."),
			say(Right, "Ah, I see I see..."),
		],
		[
			"Please leave me alone.",
			say(Left, "Please leave me alone, I am going to the store."),
			say(Right, "Oh, okay."),
			done()
		]
	]),
	say(Right, "I have a problem."),
	say(Right, "My children were playing outside in the garden but they are gone now."),
	say(Right, "I've lost my children..."),
	say(Right, "Can you help me?"),
	choice([[
		"No.",
		say(Left, "No."),
	]]),
	done(),
]
