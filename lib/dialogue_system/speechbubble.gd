extends HBoxContainer
class_name SpeechBubbleYay

@export var label: RichTextLabel
@export var sprite: Sprite2D

var content: String:
	set(v):
		label.text = v

var texture: Texture2D:
	set(v):
		sprite.texture = v
