extends Area2D

@export var scene: PackedScene
var PlayerMovementRef

func _on_body_entered(body: Node2D) -> void:
	if(body is PlayerMovement):
		PlayerMovementRef = body
		body.EnteredDialog()
		var instance = scene.instantiate()
		get_tree().get_root().add_child(instance)
		#connnect to signal
		
func dialogOver():
	PlayerMovementRef.ChangeSceneOver()
	pass
