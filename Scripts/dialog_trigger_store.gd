extends DialogTrigger

@export var to_remove: Array[Node2D]
@export var forgot_bread: DialogTrigger
@export var act3_node: Node2D

func OnDialogStop():
	for removable in to_remove:
		removable.queue_free()
	
	act3_node.add_child(forgot_bread)
	
	super.OnDialogStop()
