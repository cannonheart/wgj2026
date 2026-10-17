extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "warlock"),
	say(Right, "I'm wondering if I forgot to turn on my oven."),
	say(Right, "Do you think you can go and check on it?"),
	choice([
		[
			"No.",
			say(Left, "No. I'm going to the store."),
			say(Left, "I have to get there before it closes."),
			say(Right, "Oh."),
			say(Right, "That's very reasonable."),
		]
	]),
	say(Right, "It's the oven for my canister."),
	say(Right, "It's a magical canister, contains a lot of air in a very small space."),
	say(Right, "Useful for cleaning armor! And I'll clean my sword with it!"),
	say(Right, "When I find it..."),
	say(Right, "Anyways, those canisters have to be heated or they do unexpected things."),
	say(Right, "It's what happens with tamed magic."),
	say(Left, "Right."),
	say(Left, "Hope it works out alright then."),
	say(Right, "Yea."),
	say(Right, "I think it should be fine."),
	done()
]
