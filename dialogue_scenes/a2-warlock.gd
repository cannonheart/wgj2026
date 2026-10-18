extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(Right, "warlock"),
	say(Right, "I think I forgot an experiment on."),
	say(Right, "It's a an experiment trying to make watery air."),
	say(Left, "What?"),
	say(Right, "Like when you take a lot of air and put it in a small space."),
	say(Right, "If the space is small enough it becomes watery."),
	say(Right, "But if you touch it the magical field becomes unstable."),
	say(Right, "And then the watery air suddenly becomes a lot of airy air."),
	say(Left, "I think it should be fine."),
	say(Right, "Can you check on it?"),
	choice([
		[
			"I'm busy.",
			say(Left, "I'm busy going to the store."),
			say(Left, "I have to get there before it closes."),
			say(Right, "Oh."),
			say(Right, "Right."),
		]
	]),
	done()
]
