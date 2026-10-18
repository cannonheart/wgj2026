extends Story

func _ready():
	setup(story)


var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	say(Left, "Scruffles, we are on a mission."),
	say(Left2, "Arf arf!"),
	say(Left, "I'm hungry, the fridge and pantry are empty."),
	say(Left, "So we're going to the store to buy stuff to make sandwiches, alright?"),
	say(Left2, "Yip!"),
	done(),
]
