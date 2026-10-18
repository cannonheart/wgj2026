extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "woman"),
	say(Right, "Oh hello there Yana!"),
	say(Right, "And hello you Scruffles, you little cutesy wutesy thingy!"),
	say(Left2, "Arf!"),
	say(Right, "Can I pet your dog?"),
	choice([
		[
			"Sure!",
			say(Left, "Sure!"),
			say(Right, "Yippi!"),
			say(Narrator, "[i]She furiously pets the dog.[/i]"),
			say(Right, "Who's a good boy, who's a good wittle [i]incoherent doglover noises.[/i]"),
			say(Narrator, "[i]Scruffles looks smugly at you.[/i]"),
			say(Narrator, "[i]He's the one getting pet by a pretty woman.[/i]"),
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
	say(Right, "Bai!"),
	done()
]
