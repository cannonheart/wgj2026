extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(RightF, "mother"),
	character(RightF2, "woman"),
	say(RightF, "Hey! Come down from there!"),
	say(Narrator, "[i]Three children are running around on top of the roof.[/i]"),
	say(RightF2, "Yea! Listen to your mother!"),
	say(Left2, "Yip?"),
	say(Left, "..."),
	choice([
		[
			"You can pet Scruffles if you come down!",
			say(Left, "You can pet Scruffles if you come down!"),
			say(Left2, "Bark!"),
			say(Narrator, "[i]The stomping on the roof turns into a tiny conference.[/i]"),
			say(RightF, "..."),
			say(RightF, "Clever."),
			say(RightF2, "Thank you!"),
			say(Narrator, "[i]The children come running down and circle the dog.[/i]"),
		],
		[
			"[Leave them to figure it out.]",
			say(Left, "..."),
			say(RightF, "Tessie! Don't run so close to the edge!"),
			say(RightF2, "Come on Tem! You can practice your balance at home!"),
			say(Narrator, "[i]From the roof: [/i]Can we put up the rope again?"),
			say(RightF2, "Yea!"),
			say(Narrator, "[i]The running round on the roof stops, and a short conference is held.[/i]"),
			say(Narrator, "[i]From the roof: [/i]Can we have fried bread too?"),
			say(RightF, "Not today."),
			say(Narrator, "[i]The committé discusses again.[/i]"),
			say(Narrator, "[i]From the roof: [/i]How about tomorrow?"),
			say(RightF, "..."),
			say(RightF, "If you help out with the dough."),
			say(Narrator, "[i]The roof goes silent.[/i]"),
			say(Narrator, "[i]From the roof: [/i]Can we make funny shapes?"),
			say(RightF2, "Yes of course you can!"),
			say(Narrator, "[i]From the roof: [/i]Okay! We'll come down!"),
			say(RightF, "You're making sure the bread doesn't get out to the neighbours."),
			say(RightF2, "Yea, I'll make sure to invite their kids to join the making."),
			say(RightF, "..."),
			say(RightF, "You're a pain in the ass."),
			say(RightF2, "I love you."),
			say(RightF, "I love you too, but you are a pain in the ass."),
			say(RightF2, "Look! They're coming running!"),
			done()
		]
	]),
	done(),
]
