extends Area2D

@export var scene: PackedScene
var PlayerMovementRef

signal DialogStart(dialogScene: PackedScene)

func _on_body_entered(body: Node2D) -> void:
	if(body is PlayerMovement):
		DialogStart.emit(scene)
		body.EnteredDialog()
		
func DialogOver():
	PlayerMovementRef.ChangeSceneOver()
	pass
