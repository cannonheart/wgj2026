extends HBoxContainer
class_name ChoiceButton

@export var button: Button

signal selected(index: int)

var content: String:
	set(v):
		button.text = v

var index = 0

func _on_button_pressed() -> void:
	print("bazinga")
	selected.emit(index)
