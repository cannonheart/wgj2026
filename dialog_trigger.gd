extends Area2D
class_name DialogTrigger

@export var scene: PackedScene
var PlayerMovementRef

var camera: Camera2D
var player: PlayerMovement

signal DialogStart(dialogScene: PackedScene)


func _ready():
	camera = get_tree().get_nodes_in_group("camera")[0]
	assert(camera != null, "camera is needed")
	
	player = get_tree().get_nodes_in_group("player")[0]
	assert(player != null, "player is needed")


func _on_body_entered(body: Node2D) -> void:
	if(body is PlayerMovement):
		DialogStart.emit(scene)
		OnDialogStart()
		body.EnteredDialog()


func DialogOver():
	PlayerMovementRef.ChangeSceneOver()
	pass


var currentDialogScene


func OnDialogStart():
	print("starting dialog")
	currentDialogScene = scene.instantiate()
	
	camera.add_child(currentDialogScene)
	currentDialogScene.get_child(0).connect("story_done", OnDialogStop)
	
	pass


func OnDialogStop():
	print("stopping dialog")
	player.FinishedSceneChange()
	currentDialogScene.queue_free()
	
	# disable so we don't run the same scene twice
	# extremt osexigt men jag fick det inte att funka på något annat sätt
	# pls fix om du kan
	queue_free()
	
	pass
