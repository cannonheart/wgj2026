extends Book


@export var textbox: RichTextLabel

func _ready():
	textbox.text = "\n"
	
	content = story
	_step()


var choosing = false
var choice_buttons = []


func _step():
	var cont = next()
	if cont is String:
		textbox.text += cont + "\n\n"
	if cont is Say:
		textbox.text += cont.character + ": \"" + cont.line + "\"\n\n"
	
	_scroll.call_deferred()
	
	if cont is Array:
		choosing = true
		for c in cont:
			print(c)


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		_step()


var scrolltween: Tween
func _scroll():
	if scrolltween:
		scrolltween.stop()
	var scroll = textbox.get_v_scroll_bar()
	scrolltween = create_tween()
	scrolltween.tween_property(scroll, "value", scroll.max_value - scroll.page, 0.3).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_IN_OUT)


class Say extends CustomLine:
	var character: String
	var line: String


func say(character: String, line: String):
	var s = Say.new()
	s.character = character
	s.line = line
	return s


var story = [
	"There are a lot of men in the world who wear clothes slightly below their size.",
	"This results in a conflict between girth and circumference of said clothing.",
	"Some of them have garters.",
	"Being a size medium and having size extra tiny garters has become forbidden at parties where the politically important spend their time.",
	"When the garters snap their buttons come flying at great speed.",
	"Assasins figured this out and after the loss of three aristocrats and a dog it became unacceptable to wear them.",
	"On the topic of buttons, a king was once killed by a button.",
	"Not by an assasin. Not by garters.",
	"This was after garters became banned.",
	"Let me take you back to a battlefield, out in the woods.",
	"In the little coutry of Swedaria.",
	
	"It was in the middle of the night while the king was sitting on his horse.",
	say("Officer Johansen", "Good evening sir."),
	say("King Charl", "Good evening Officer Johansen."),
	"The officer was standing at attention on the ground, looking up into the nostrils of his monarch.",
	"This sort of communication was frequent in the Swedarian army, mouth to nose communication.",
	"That was not to be confused with mouth to mouth communication, which happened occasionally (frequently) behind doors.",
	"Charl recognized this as a good bit of brotherhood within the soldiery.",
	"He was the product of seventeen generations of inbreeding, and saw nothing wrong with a bit of brotherly kissing.",
	"His father before him had not been so open to brotherly kissing, but sisterly had been perfectly acceptable.",
	"Charl had his Fathers nose and Mothers nose but at the same time his Aunts and Uncles noses too.",
	say("Officer Johansen", "We've got enemy lines in that direction, sir."),
	"Johansen waved his hand towards the forest.",
	"Charls horse was facing away from the forest.",
	say("King Charl", "Then we shall slay the enemy lines! Which are over there!"),
	"Charl tugged at the reins.",
	"The horse remembered that motion from its training. It meant \"Stop right now you beast!\"",
	"Now, the horse was proficient in Swedar and liked being alive", 
	"It turned around, sweeping it's arse just in front of Johansens face.",
	say("King Charl", "Where is our army?"),
	say("Officer Johansen", "Sleeping, sir."),
	say("King Charl", "Well, why don't you wake them up?"),
	"Johansen thought about this. This meant attacking in the night. Attacking in the night meant men stabbing each other in the darkness.",
	"Sometimes after having found the enemy",
	"But officers became officers by saying \"yes sir!\" in a pleasant tone of voice.", 
	say("Officer Johansen", "I'll get right to it sir."),
	"...",
	"Inside a tent Private Ericson was sitting and warming his by the stove.",
	"Johansen stuck in his head an gave an order.",
	"Then Ericson shook Private Boronson awake.",
	say("Private Boronson", "I will slaughter your entire family if you wake me up this early again, private."),
	"Ericson blinked",
	"This was unusually cranky even for Boronson.",
	say("Private Boronson", "..."),
	say("Private Boronson", "What?"),
	say("Private Ericson", "We're going out. Enemies in the forest."),
	"Boronson jabbed the body next to him.",
	say("Private Alherd", "Mhm?"),
	say("Private Boronson", "We're going out to die, get up."),
	say("Private Alherd", "Sounds like fun."),
	"Alherd sat up and rubber her eyes. Then she punched Boronson in the shoulder.",
	say("Private Alherd", "That's for waking me up through my liver."),
	"They gathered their gear and joined their ranks around the central fire.",
	say("King Charl", "Gentlemen!"),
	"He spread his arms out like an angel.",
	say("King Charl", "The enemy has been found in the forest!"),
	say("King Charl", "Attack them!"),
	"There was a murmur of \"yes sir\", mixed with some curses.",
	"Charl stared at the soldiery.",
	say("King Charl", "Come on now, get moving."),
	"The officers around the camp discussed the strategy, yelled a bit and then they all went off.",
	"Boronson looked around the commotion, and saw a metallic glint at the edge of the forest.",
	"Then it went away.",
	"An officer passed by, informed the trio about the planned movements of the different units.",
	"Then the three of them went off in their own direction, separate from the rest.",
	"They were trained for and tasked with flanking the enemy. And tasked with being a pain in the bum, neck or head for those who ended up in their sights.",
	"They sat down on the ground when they stopped hearing the rest of the army.",
	"Boronson tightened a screw on his rifle. A piece of the scope had been clinking against the body of it.",
	"He took a look down the long pipe. It wasn't bent.",
	"Then Alherd went ahead into the forest. From a good spot low on the ground she'd be able to see the siluettes of the enemy, and pick of one before disappearing into the darkness.",
	say("Private Boronson", "Best of luck, Alherd"),
	"It was not only brotherly mouth to mouth that happened in the army",
	"Ericson and Boronson moved towards a swamp.",
	"Low and moist was the way to go.",
	"Preferably more low than moist.",
	"There was the smattering of rifles. A lot of them. It came from the direction that Alherd had went.",
	"Boronson went pale.",
	"Boronson pulled the hammer on his rifle and snaked through the bushes to where she'd be.",
	"He came out of a bush and saw a dozen shapes shapes up on the hill, black against the light of the night sky.",
	
	
	"Then a horse trodded up on the hill, the royal making himself perfectly visible.",
	say("Officer Johansen", "Sir."),
	say("King Charl", "What are you firing for?!"),
	"The men stood guiltily with their rifles.",
	"A group of men walking through the night with a supposed enemy up ahead could get a bit fiddly with their weapons.",
	"And nervous about their triggers.",
	say("Officer Johansen", "The men spotted a target and took it down, sir."),
	say("King Charl", "But we haven't met the enemy line yet, have we?"),
	say("King Charl", "And Radogravians should be organized."),
	say("King Charl", "They form proper lines."),
	say("Officer Johansen", "Don't think this was part of the enemy line, sir."),
	say("Officer Johansen", "It's, well. A woman."),
	say("Officer Johansen", "One of ours."),
	say("King Charl", "Ah, the wench from the flanking group."),
	"Johansen kept a perfectly blank face.",
	say("Officer Johansen", "Yes, sir."),
	say("King Charl", "Was about time."),
	"The king looked expectantly at the Officer in front of him.",
	"The Officer looked back at attention.",
	say("King Charl", "So?"),
	say("Officer Johansen", "So what, sir?"),
	say("King Charl", "There is an enemy over there, go!"),
	say("Officer Johansen", "But the body, sir?"),
	say("King Charl", "There are wolves in the forest. Get moving."),
	
	"Ericson had caught up with Boronson, and they were listening.",
	"Boronson was preparing a special bullet.",
	"There was only one flanking group in the regiment in this forest. There we're three of them in the group. Two now.",
	"The flanking group has special weapons and ammunition. Even the common soldier could look at fired munitions and see what weapon it had come out of.",
	"And Boronson were not going to see either Ericson or himself take the blame for this shot.",
	"He'd torn off one of his spare buttons.",
	say("Private Ericson", "What are you doing?"),
	"Boronson fired, and the King fell to the ground.",
	"The men on the hill threw themselves down.",
	say("Officer Johansen", "Fire freely!"),
	"And the men on the hill fired frantically into the darkness.",
	"The duo was crawling away.",
	"One bullet pinged off a nearby rock, another blew into a tree and sprayed splinters onto the two of them.",
	"Then they were gone",
	say("Officer Johansen", "Hold!"),
	"Johansen looked down at his king. The king who made him commander.",
	"He pursed his lips and waved at a nearby soldier.",
	say("Officer Johansen", "You, get him back to the tents."),
	"He slung the king over his shoulders. The group one by one stood up and started the march back to the tents.",
	"Along with Johansens group the rest of the royal army retreated, and in the morning Johansen sat and discussed terms for surrender.",
	"And he started thinking about the next king.",
	
	"...",
	"The end.",
	"Written by Ivy Cannonheart.",
]
