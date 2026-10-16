extends Area2D

class_name scenetransition

@export var gotoSceneName: String
var gotoScene

signal changeScene(sceneName: String)

func _on_body_entered(body: Node2D) -> void:
	if(body is PlayerMovement):
		changeScene.emit(gotoSceneName)
		pass
