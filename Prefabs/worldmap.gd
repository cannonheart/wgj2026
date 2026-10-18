extends Node2D

func _ready():
	get_parent().remove_child.call_deferred(self)
