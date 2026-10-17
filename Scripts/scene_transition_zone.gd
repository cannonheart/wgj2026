extends Area2D

class_name scenetransition
var used = false

@export var gotoSceneCamPos: Node2D
@export var gotoPlayerPos: Node2D

@export var colliders: Array[CollisionShape2D]

signal changeScene(sceneName: String)

func _on_body_entered(body: Node2D) -> void:
	if(!used && body is PlayerMovement):
		changeScene.emit(gotoSceneCamPos)
		body.ChangeScene(gotoPlayerPos.global_position)
		used = true
		for collider in colliders:
			collider.set_deferred("disabled", false)
		pass
