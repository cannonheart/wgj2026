extends Node

@export var CameraTransform:Node2D

func _ready() -> void:
	ConnectTransitions.call_deferred()
	pass

func ConnectTransitions():
	var transitions = get_tree().get_nodes_in_group("SceneTransitions")
	for transition in transitions:
		if(transition.has_signal("changeScene")):
			transition.connect("changeScene", OnChangeScene, 1)
		if(transition.has_signal("DialogStart")):
			transition.connect("DialogStart", OnDialogStart, 1)
		pass
	pass

func OnDialogStart(dialogScene: PackedScene):
	var instance = dialogScene.instantiate()
	CameraTransform.add_child(instance)
	pass

func OnChangeScene(nextScene: Node2D):
	CameraTransform.global_position = nextScene.global_position
	pass
