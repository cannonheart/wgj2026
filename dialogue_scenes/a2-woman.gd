extends Story


func _ready():
	setup(story)


var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "woman"),
	say(Right, "Hallao!"),
	choice([
		[
			"What the fuck are you doing?",
			say(Left, "What the fuck are you doing?"),
			say(Right, "Bugs!"),
			say(Right, "Well not doing them, in that sense."),
			say(Right, "I have a wife."),
			say(Right, "It wouldn't do to do things with bugs then."),
			say(Right, "Anyways, look at them!"),
			say(Right, "[i]She points to a crack in the ground. A bunch of ants are fighting a caterpillar.[/i]"),
		],
		[
			"Are you looking at those bugs?",
			say(Left, "Are you looking at those bugs?"),
			say(Right, "Yea!"),
			say(Right, "..."),
			say(Left, "What are they doing?"),
			say(Right, "They're fighting!"),
			say(Right, "The caterpillar walked into a bunch of ants and now it's fighting for it's life!"),
		]
	]),
	say(Left2, "[i]Scruffles sniffs the bugs.[/i]"),
	say(Right, "HEY!"),
	say(Right, "Don't disturb them!"),
	say(Right, "Don't upset the order of nature!"),
	say(Right, "It's beautiful already as it is!"),
	say(Left2, "[i]Scruffles looks up at the woman.[/i]"),
	say(Left2, "[i]He beams with puppy eyes at her.[/i]"),
	say(Right, "No touching, okay?"),
	say(Left2, "[i]Scruffles slowly brings out his tounge and licks the caterpillar.[/i]"),
	say(Right, "Oh look what you've done!"),
	say(Right, "The caterpillar is sticky now! And it was about to get out on its own!"),
	say(Left2, "[i]Scruffles whines.[/i]"),
	say(Left2, "[i]Then he blows on the caterpillar so it starts rolling.[/i]"),
	say(Right, "Stop it!"),
	say(Right, "Oh hey the sticky caterpillar is picking up ants!"),
	say(Right, "That's cool!"),
	say(Left2, "[i]Scruffle blows at it again. It disappears into into a drain.[/i]"),
	say(Right, "[i]The woman stares furiously.[/i]"),
	choice([
		[
			"Your wife is looking for you.",
			say(Left, "Your wife is looking for you."),
			say(Right, "Oh right."),
			say(Right, "I was supposed to do something."),
			say(Right, "I think it was kind of important."),
			choice([
				[
					"Your kids.",
					say(Left, "Your kids maybe?"),
					say(Right, "Shit!"),
					say(Right, "Yea I was supposed to look them."),
					say(Right, "I should probably do, well, that."),
					done()
				],
				[
					"[Say nothing.]",
					say(Left, "[i]Yana doesn't say anything.[/i]"),
					say(Left, "[i]Despite remembering what she should say.[/i]"),
					say(Right, "Oh it's probably nothing!"),
					say(Right, "But now the caterpillar is gone."),
					say(Right, "So there isn't really anything more to do here."),
					say(Right, "..."),
					say(Right, "Actually there seems to be a bee nest behind this plank, can you help me tear it off?"),
					choice([
						[
							"No!",
							say(Left, "No!"),
							say(Left2, "[i]Growl[/i]"),
							done(),
						]
					])
				]
			]),
		],
		[
			"Scruffles, let's leave.",
			say(Left, "Maybe it's time that we leave now."),
			say(Left, "Scruffles, come on."),
		]
	]),
	done(),
]
