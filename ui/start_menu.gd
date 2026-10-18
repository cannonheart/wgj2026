extends Node2D

@export var world: Node2D
@export var world_parent: Node2D

func _ready():
	visible = true

func start_game():
	world_parent.add_child(world)
	queue_free()
