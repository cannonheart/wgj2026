extends Story

func _ready():
	setup(story)

var story = [
	say(Narrator, "[i]Yana walks into the store and buys some salami, butter, cheese.[/i]"),
	say(Narrator, "[i]And some dog treats.[/i]"),
	say(Narrator, "[i]Then she leaves the store.[/i]"),
	say(Narrator, "[i]And the store closes as she walks out.[/i]"),
	done()
]
