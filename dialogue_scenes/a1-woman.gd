extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "woman"),
	say(Right, "Oh hello there!"),
	say(Right, "And hello to you you little cutesy wutesy thingy!"),
	say(Right, "[i]The woman stretches out her hands and makes scratchy motions in the air.[/i]"),
	say(Right, "Can I pet your dog?"),
	choice([
		[
			"Sure!",
			say(Left2, "Arf!"),
			say(Left2, "[i]Scruffles strains the leash.[/i]"),
			say(Left, "Sure!"),
			say(Right, "Yippi!"),
			say(Right, "[i]She furiously pets the dog.[/i]"),
			say(Right, "Who's a good boy, who's a good wittle [i]incoherent appreciation noises.[/i]"),
			say(Left2, "[i]Scruffles looks smugly at you.[/i]"),
			say(Left2, "[i]He's the one getting pet by the pretty woman.[/i]"),
		],
		[
			"Nah.",
			say(Left, "Nah. We have to get to the store before it closes."),
			say(Right, "Oh."),
			say(Right, "Okay."),
			say(Right, "Yea that's fine."),
			done(),
		]
	]),
	say(Left, "Alright, we'll have to get going now."),
	say(Left, "Otherwise the store will close will close before we get there."),
	say(Right, "[i]The woman goes back to doing whatever she was doing earlier."),
	done()
]
