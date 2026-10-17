extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "mother"),
	say(Right, "I have not found my children."),
	say(Right, "I asked my wife out to search with me as well."),
	say(Right, "Then I looked away for a minute and she was gone too."),
	say(Right, "Probably searching in some corner of her own."),
	say(Left, "So you've lost track of both your wife and kids?"),
	say(Right, "..."),
	say(Left, "Just one way to put it!"),
	say(Left, "You don't have to see it that way if you don't want to!"),
	say(Right, "Mhm yes."),
	say(Right, "Can you tell my wife to come to me if you see her?"),
	choice([
		[
			"Who is your wife?",
			say(Left, "How do I tell it's your wife?"),
			say(Right, "Oh my sweetheart is very easy to spot."),
			say(Right, "She's probably adoring a butterfly or something."),
			say(Right, "She does painting you see."),
			say(Right, "Urban environments with animals, or things that at least move."),
			say(Right, "She likes the challenge in painting something that moves."),
			say(Right, "But she thinks green colours are too expensive, so she doesn't do nature."),
			say(Left, "I see."),
			say(Left, "I'm really in a bit of hurry."),
			say(Left, "Just like when we last talked."),
			say(Left, "But I'll tell her if I stumble into her."),
			say(Right, "Thank you!"),
		], 
		[
			"I'm busy!",
			say(Left, "I'm trying to get to the store before it closes!"),
			say(Right, "..."),
			say(Right, "Right, the store."),
			say(Right, "Very important, the store."),
			say(Right, "For her too."),
			say(Right, "Good luck on your travels!"),
		]
	]),
	done()
]
