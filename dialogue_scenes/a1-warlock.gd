extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "warlock"),
	say(Right, "Hi Yana..."),
	say(Left, "Hello miss."),
	say(Left, "You look like you've lost something."),
	say(Right, "Yes..."),
	say(Right, "My sword has gone."),
	say(Right, "I was practicing my swings, then I took a little rest."),
	say(Right, "I just shut my eyes for a tiny bit, not long at all."),
	say(Right, "And when I woke my sword was gone."),
	say(Left, "I see."),
	say(Left, "Any idea where it went?"),
	say(Right, "No..."),
	say(Right, "I just hope noone tries to use it and hurts themselves."),
	say(Right, "Or someone else..."),
	say(Left, "Yea that'd be terrible."),
	choice([
		[
			"Good luck finding it.",
			say(Left, "Good luck finding it."),
			say(Left, "I don't think anyone would hurt someone with that sword."),
			say(Left, "Not in this town."),
			say(Left, "Probably just someone playing a little prank, alright?"),
			say(Right, "You're probably right..."),
			say(Right, "I'll start searching!"),
		],
		[
			"I'll tell you if I see it",
			say(Left, "I'll keep an eye open for it."),
			say(Left, "And tell you if I see it."),
			say(Right, "Thank you!"),
			say(Right, "I really appreciate it!"),
		]
	]),
	done()
]
