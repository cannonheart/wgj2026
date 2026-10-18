extends DialogTrigger

@export var overworld: Node2D
@export var credits: PackedScene
@export var music_manager: Music

func _ready():
	get_parent().remove_child.call_deferred(self)
	
	super._ready()

func OnDialogStop():
	print("stopping everythign")
	music_manager.stop_music()
	overworld.queue_free()
	
	var tw = get_tree().create_tween()
	tw.tween_interval(3.0)
	tw.tween_callback(func():
		player.queue_free()
		
		var inst = credits.instantiate()
		camera.add_child(inst)
	)
	
	super.OnDialogStop()
