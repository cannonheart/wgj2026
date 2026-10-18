extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "smith"),
	say(Right, "I found my roof!"),
	say(Right, "And the kids are alright."),
	say(Right,  "Can you check if my daughter is alright?"),
	choice([
		[
			"She stands next to you!",
			say(Left, "She stands next to you!"),
			character(Right2, "warlock"),
			say(Right2, "Huh?"),
			say(Right, "Are you alright?"),
			say(Right2, "Yea I think so..."),
		],
		[
			"No.",
			say(Left, "No."),
			say(Right, "Right."),
			say(Right, "How are you, daughter?"),
			character(Right2, "warlock"),
			say(Right2, "I'm alright, I think..."),
		]
	]),
	say(Right, "Great!"),
	say(Right, "How do we get the roof back?"),
	done()
]
