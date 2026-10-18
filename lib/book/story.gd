extends Book
class_name Story

#@export var prefab_speech: PackedScene
@onready var textbox: RichTextLabel = $RichTextLabel
var prefab_choice: PackedScene = preload("res://lib/dialogue_system/choice_option.tscn")
@onready var speech_parent: Control = $choiceParent

@onready var spriteContainer = $spriteContainer
var sprites: Dictionary[SpritePosition, SpeakerInfo] = {}

class SpeakerInfo:
	var Sprite:AnimatedSprite2D
	var voiceID: String

signal story_done

func setup(story: Array):
	var children = spriteContainer.get_children()
	for i in children.size():
		var child = children[i]
		var Speaker = SpeakerInfo.new()
		Speaker.Sprite = child
		sprites.set(i, Speaker)
	
	if get_parent().get_parent() is Window:
		position.x = 540
		position.y = 540
	
	content = story
	_step.call_deferred()

var choosing = false
var choice_buttons = []


var last_speaker = -1
func _step():
	var cont = next()
	
	if cont is Say:
		#var inst: SpeechBubbleYay = prefab_speech.instantiate()
		#speech_parent.add_child(inst)
		#inst.content = cont.line
		
		textbox.text = cont.line
		
		for key in sprites:
			var sprite = sprites[key].Sprite
			sprite.modulate = Color.from_string("96bba9", Color.GRAY)
		
		var current = sprites[cont.position]
		current.Sprite.modulate = Color.WHITE
		SfxPlayer.PlayVoice(current.voiceID)
		
		if last_speaker != cont.position:
			squish_sprite(current.Sprite, 0.2)
		else:
			squish_sprite(current.Sprite, 0.1)

		last_speaker = cont.position
	
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
		var sprite = sprites[cont.position].Sprite
		sprites[cont.position].voiceID = cont.sprite
		sprite.play(cont.sprite)
		_step()
	
	elif cont is Done:
		story_done.emit()


func _choice_selected(index: int):
	select_choice(index)
	#SfxPlayer.PlaySound("res://Audio/SFX/blipSelect.wav")
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
	Narrator,
	Left,
	Left2,
	Right,
	Right2,
	RightF,
	RightF2,
}

const Narrator = SpritePosition.Narrator
const Left = SpritePosition.Left
const Left2 = SpritePosition.Left2
const Right = SpritePosition.Right
const Right2 = SpritePosition.Right2
const RightF = SpritePosition.RightF
const RightF2 = SpritePosition.RightF2

func say(pos: SpritePosition, line: String):
	var s = Say.new()
	s.position = pos
	s.line = line
	return s


class Done extends CustomLine:
	pass

func done():
	return Done.new()

func squish_sprite(sprite, mult):
	var tw = create_tween()
	tw.tween_callback(func():
		sprite.scale.y = 1.0 - 0.2 * mult)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		sprite.scale.y = 1.0 + 0.2 * mult)
	tw.tween_interval(0.1)
	tw.tween_callback(func():
		sprite.scale.y = 1.0)
