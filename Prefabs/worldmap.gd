extends Node2D

func _ready() -> void:
	ConnectTransitions.call_deferred()
	pass
	
func ConnectTransitions():
	var transitions = get_tree().get_nodes_in_group("SceneTransitions")
	for transition in transitions:
		transition.connect("changeScene", OnChangeScene, 1)
		pass
	pass
func OnChangeScene(nextScene: String):
	print(nextScene)
	pass
