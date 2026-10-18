extends Story

func _ready():
	setup(story)

var story = [
	character(Left, "yana"),
	character(Left2, "scruffles"),
	character(RightF, "mother"),
	character(RightF2, "woman"),
	say(Narrator, "[i]Children are running on the roof.[/i]"),
	say(RightF, "Hey! Come down from there!"),
	say(RightF2, "Yea! Listen to your mother!"),
	say(Left2, "Yip?"),
	choice([
		[
			"You can pet Scruffles if you come down!",
			say(Left, "You can pet Scruffles if you come down!"),
			say(Left2, "Bark!"),
			say(Narrator, "[i]The kids stop running.[/i]"),
			say(Narrator, "[i]Then they come running down to the dog.[/i]"),
		],
		[
			"[Leave them to figure it out.]",
			say(Left, "..."),
			say(RightF, "Tessie! Don't run so close to the edge!"),
			say(RightF2, "Come on Tem! You don't have to practice your balance right there!"),
			say(Narrator, "[i]From the roof: [/i]Can we put up the balancing rope?"),
			say(RightF2, "Yea!"),
			say(Narrator, "[i]The running stops, and a short conference is held.[/i]"),
			say(Narrator, "[i]From the roof: [/i]Can we have fried bread too?"),
			say(RightF, "Not today."),
			say(Narrator, "[i]The committé discusses further.[/i]"),
			say(Narrator, "[i]From the roof: [/i]How about tomorrow?"),
			say(RightF, "..."),
			say(RightF, "If you help out with the dough."),
			say(Narrator, "[i]The roof goes silent.[/i]"),
			say(Narrator, "[i]From the roof: [/i]Can we make funny shapes?"),
			say(RightF2, "Yes of course you can!"),
			say(Narrator, "[i]From the roof: [/i]Okay! We'll come down!"),
			done()
		]
	]),
	done(),
]
