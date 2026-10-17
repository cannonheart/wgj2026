extends Book
class_name Story

#@export var prefab_speech: PackedScene
@export var textbox: RichTextLabel
@export var prefab_choice: PackedScene
@export var speech_parent: Control
@export var sprite_lut: SpriteLut

@export var sprites: Dictionary[SpritePosition, Sprite2D]

signal story_done

func setup(story: Array):
	content = story
	_step.call_deferred()


var choosing = false
var choice_buttons = []


func _step():
	var cont = next()
	
	if cont is Say:
		#var inst: SpeechBubbleYay = prefab_speech.instantiate()
		#speech_parent.add_child(inst)
		#inst.content = cont.line
		
		textbox.text = cont.line
		for key in sprites:
			var sprite = sprites[key]
			sprite.modulate = Color.WEB_GRAY
		
		sprites[cont.position].modulate = Color.WHITE
		
		#var texture = sprite_lut.sprites.get(cont.sprite)
		#inst.texture = texture
	
	if cont is Array:
		choosing = true
		for i in cont.size():
			var c = cont[i]
			var inst: ChoiceButton = prefab_choice.instantiate()
			speech_parent.add_child(inst)
			inst.content = c
			inst.index = i
			inst.selected.connect(_choice_selected)
	
	if cont is Character:
		var sprite = sprites[cont.position]
		sprite.texture = sprite_lut.sprites.get(cont.sprite)
		Log.prn(sprite_lut)
	
	elif cont is Done:
		story_done.emit()


func _choice_selected(index: int):
	select_choice(index)
	for node in get_tree().get_nodes_in_group("choice_option"):
		node.queue_free()
	
	_step()
	choosing = false


func _input(event: InputEvent) -> void:
	if not choosing:
		if event is InputEventMouseButton and event.is_pressed():
			_step()


class Character extends CustomLine:
	var position: SpritePosition
	var sprite: String

func character(pos: SpritePosition, sprite: String):
	var s = Character.new()
	s.position = pos
	s.sprite = sprite
	return s


class Say extends CustomLine:
	var position: SpritePosition
	var line: String

enum SpritePosition {
	Left,
	Right
}

const Left = 0
const Right = 1

func say(pos: SpritePosition, line: String):
	var s = Say.new()
	s.position = pos
	s.line = line
	return s


class Done extends CustomLine:
	var shit

func done():
	return Done.new()
