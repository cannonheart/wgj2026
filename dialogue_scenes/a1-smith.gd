extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "smith"),
	say(Left, "Good evening mister Smith."),
	say(Right, "Good evening Yana."),
	say(Right, "I'm very troubled."),
	say(Right, "I was beating the armor on the anvil earlier..."),
	choice([
		[
			"The store closes soon.", 
			say(Left, "I'm on my way to the store and it closes soon."),
			say(Right, "Oh."),
			say(Right, "Then I shall not bother you anymore!"),
			say(Right, "Please leave!"),
			done()
		],
		[
			"Tell me about it.",
			say(Left, "Please do tell me about it."),
		]
	]),
	say(Right, "As I was beating the armor, I heard some kids running past me laughing!"),
	say(Right, "They ran up to the upper floor."),
	say(Right, "That's where my daughter has her equipment."),
	say(Right, "And they blocked the door with something!"),
	say(Right, "So now I can't get in."),
	choice([
		[
			"Have you asked them to come out?",
			say(Left, "Have you asked them to come out?"),
			say(Right, "..."),
			say(Right, "I supposed they wouldn't if I did ask..."),
			say(Right, "So I didn't..."),
			say(Right, "Can you ask them?"),
		],
		[
			"Can't your daughter deal with them?",
			say(Left, "Mister Smith."),
			say(Left, "Dear mister."),
			say(Left, "Isn't your daughter a warrior?"),
			say(Right, "Yes she is!"),
			say(Right, "But she is practicing at the moment."),
			say(Right, "And I don't want to disturb my sweet child when she is improving her swordswomanship!"),
			say(Right, "You also happened to be near."),
			say(Right, "Can you help me!?"),
		]
	]),
	choice([
		[
			"No.",
			say(Left, "No."),
			say(Left, "My fridge is empty, and I want sandwiches."),
			say(Left, "I need to go to the store before it closes."),
		]
	]),
	done()
]
