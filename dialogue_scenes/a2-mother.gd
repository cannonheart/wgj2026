extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "smith"),
	say(Left, "Good evening mister Smith."),
	say(Left, "You look troubled."),
	say(Right, "Yes, yes!"),
	say(Right, "I was beating the armor on the anvil earlier."),
	say(Right, "Speaking of armor!"),
	say(Right, "Would you like to buy a piece of armor?"),
	choice([[
			"What? No?",
			say(Left, "What? No?"),
			say(Left, "What would I even do with it?"),
			say(Right, "It protects you against monsters!"),
			say(Left, "[i]Yana wonders if dustbunnies the size of a, well, bunny counts as monstrous.[/i]"),
			say(Left, "[i]Then she remembers she has a sweeper.[/i]"),
			say(Left, "[i]And that dustbunnies don't bite back.[/i]"),
			say(Left, "I think I'm good."),
			say(Right, "Always worth an attempt!"),
		],
	]),
	say(Right, "Now, to the problem at hand."),
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
	say(Right, "I was in the Smithery, beating my anvil."),
	say(Right, "Sorry, beating my armor on the anvil."),
	say(Right, "It would be very silly to beat the anvil."),
	say(Right, "As I was beating, I heard voices shouting and laughing!"),
	say(Right, "And small feet running past!"),
	say(Right, "They ran up to the upper floor."),
	say(Right, "That's where my daughter has her equipment."),
	say(Right, "And they closed the door with a sword!"),
	say(Right, "So now I can't get in."),
	choice([
		[
			"Have you talked to them?",
			say(Left, "Have you tried talking to them?"),
			say(Right, "..."),
			say(Right, "How?"),
			say(Left, "Like, through the door?"),
			say(Right, "But they must be some sort of horrible fritter!"),
			say(Right, "Critter I mean, sorry."),
			say(Right, "I think they might eat the walls!"),
			say(Right, "Or my daughters concoctions, that'd be bad.")
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
		]
	]),
	say(Right, "Can you help me!?"),
	choice([
		[
			"No.",
			say(Left, "No."),
		]
	]),
	done()
]
