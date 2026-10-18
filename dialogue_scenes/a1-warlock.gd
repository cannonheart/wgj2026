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
	say(Right, "I was practicing, then I rested."),
	say(Right, "I shut my eyes for a tiny bit, not long at all."),
	say(Right, "When I woke my sword was gone."),
	say(Left, "I see."),
	say(Left, "Any idea where it went?"),
	say(Right, "No..."),
	choice([
		[
			"Good luck finding it.",
			say(Left, "Probably just someone playing a prank, alright?"),
			say(Left, "I think you'll find it."),
			say(Right, "You're probably right..."),
			say(Right, "I'll start searching!"),
		],
		[
			"I'll tell you if I see it",
			say(Left, "I'll tell if you I see it."),
			say(Right, "Thank you!"),
		]
	]),
	done()
]
