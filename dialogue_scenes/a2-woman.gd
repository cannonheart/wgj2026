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
	say(Right, "Scruffles, don't disturb them!"),
	say(Right, "Don't upset the order of nature!"),
	say(Narrator, "[i]Scruffles looks up at the woman.[/i]"),
	say(Narrator, "[i]He beams puppy eyes at her.[/i]"),
	say(Right, "No touching, okay?"),
	say(Narrator, "[i]Scruffles licks the caterpillar.[/i]"),
	say(Right, "Oh no!"),
	say(Right, "You made the caterpillar sticky! It's at a disadvantage now!"),
	say(Narrator, "[i]Scruffles blows the caterpillar. It rolls.[/i]"),
	say(Right, "Stop it!"),
	say(Right, "Oh hey the sticky caterpillar is picking up ants!"),
	say(Right, "That's cool!"),
	say(Narrator, "[i]Scruffle blows at it again. It disappears into into a drain.[/i]"),
	say(Narrator, "[i]The womans face goes blank.[/i]"),
	choice([
		[
			"Your wife is looking for you.",
			say(Left, "By the way"),
			say(Left, "Your wife is looking for you."),
			say(Right, "Huh? Oh."),
			say(Right, "I was supposed to do something."),
			say(Right, "I think it was kind of important."),
			choice([
				[
					"Your kids.",
					say(Left, "Your kids maybe?"),
					say(Right, "Shit!"),
					say(Right, "Yea I was supposed to search for them."),
					say(Right, "I should probably do, well, that."),
					done()
				],
				[
					"[Say nothing.]",
					say(Narrator, "[i]Yana doesn't say anything.[/i]"),
					say(Right, "Oh it's probably nothing!"),
					say(Right, "But now the caterpillar is gone."),
					say(Right, "So there isn't really anything more to do here."),
					say(Right, "..."),
					say(Right, "Actually there seems to be a bee nest behind this plank, can you help me tear it off?"),
					choice([
						[
							"No!",
							say(Left, "No!"),
							say(Left2, "Grrrrr."),
							done(),
						]
					])
				]
			]),
		],
		[
			"Let's, uh, leave.",
			say(Left, "Maybe it's time that we leave now."),
			say(Left, "Scruffles, come on."),
		]
	]),
	done(),
]
