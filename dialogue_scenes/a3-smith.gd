extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "smith"),
	say(Right, "I found my roof!"),
	say(Right, "And the kids are alright."),
	say(Left, "Looks like they were very lucky."),
	say(Right, "Oh I don't know about that, they're very clever, those little buggers."),
	say(Right, "Probably knew what they were doing."),
	say(Right, "Maths and whatnot they learn these days."),
	say(Left, "Possibly."),
	say(Right, "..."),
	say(Right, "Do you can check if my daughter is alright?"),
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
	say(Right, "Now, how do we get the roof back?"),
	done()
]
