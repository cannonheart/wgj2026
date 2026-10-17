extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Right, "mother"),
	say(Right, "Good evening Yana..."),
	choice([
		[
			"Good evening mrs Glurfdottir.",
			say(Left, "Good evening mrs Glurfdottir."),
			say(Left, "And Scruffles wishes Good Evening too I'm sure."),
			say(Left2, "Bark!"),
			say(Left, "We are on our way to the store."),
			say(Right, "Ah, I see I see..."),
		],
		[
			"Please leave me alone",
			say(Left, "Please leave me alone, I am busy going to the store."),
			say(Right, "But I desperately need your help!"),
			choice([
				[
					"No.",
					done(),
				],
				[
					"Oh fine.",
					say(Left, "Oh fine, tell me what has happened.")
				]
			])
		]
	]),
	say(Right, "Terror has struck me..."),
	say(Right, "My children were playing outside in the garden but they are gone now."),
	say(Right, "They did so back last year as well."),
	say(Right, "It took me and my wife the whole day to find them!"),
	say(Right, "Mostly me searching though."),
	say(Right, "I think she was mostly looking in gutters."),
	say(Right, "But yes..."),
	say(Right, "I've lost my children..."),
	say(Right, "Can you help me?"),
	choice([[
		"No.",
		say(Left, "No."),
	]]),
	done(),
]
