extends GutTest

func test_basic():
	var story = autofree(Book.new())
	story.content = [
		"hello",
		"world"
	]
	
	assert_eq(story.next(), "hello")
	assert_eq(story.next(), "world")

func test_simple_choice():
	var story = autofree(Book.new())
	story.content = [
		story.choice([
			[
				"label this",
				"content that"
			]
		])
	]
	
	assert_eq(story.next(), ["label this"])

func test_choice():
	var story = autofree(Book.new())
	story.content = [
		"hello world",
		story.choice([
			[
			"shoot the man",
			"you shoot the man in the chest",
			],
			[
			"be nice",
			"you are very nice",
			]
		]),
		"no more choice"
	]
	
	assert_eq(story.next(), "hello world")
	assert_eq(story.next(), ["shoot the man", "be nice"])
	story.select(1)
	assert_eq(story.next(), "you are very nice")
	assert_eq(story.next(), "no more choice")

func test_simple_conditional():
	var story = autofree(Book.new())
	story.content = [
		story.cond(func(): return true, ["there is a horse here"])
	]
	
	assert_eq(story.next(), "there is a horse here")

func test_choice_conditional():
	var story = autofree(Book.new())
	story.content = [
		story.choice([
			[
				story.cond(func(): return false, "never exists choice"),
				"some content",
			],
			[
				story.cond(func(): return true, "always"),
				"with content!"
			],
			[
				"regular choice",
				"meow"
			]
		])
	]
	
	assert_eq(story.next(), ["always", "regular choice"])
	
