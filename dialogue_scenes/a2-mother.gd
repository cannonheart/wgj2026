extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "mother"),
	say(Right, "I have not found my children."),
	say(Right, "I asked my wife search with me."),
	say(Right, "Now she is gone too."),
	say(Right, "Can you tell my wife to come to me if you see her?"),
	choice([
		[
			"If I stumble into her then sure.",
			say(Left, "If I stumble into her then sure."),
			say(Right, "She's probably adoring a butterfly or something."),
			say(Left, "I see."),
			say(Right, "Thank you!"),
		], 
		[
			"I'm busy!",
			say(Left, "I'm trying to get to the store before it closes!"),
			say(Right, "..."),
			say(Right, "Right, the store."),
			say(Right, "Very important, the store."),
			say(Right, "Good luck on the travels."),
		]
	]),
	done()
]
