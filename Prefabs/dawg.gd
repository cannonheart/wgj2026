extends AnimatedSprite2D

var max_speed = 300.0
var stop_distance = 50.0

@export var target: Node2D

@onready var last_pos = target.position


func _physics_process(delta: float) -> void:
	global_position = last_pos
	var global_goal = target.global_position
	
	var diff = global_goal - global_position
	
	if diff.length_squared() > stop_distance * stop_distance:
		global_position = global_position + diff.normalized() * max_speed * delta
		last_pos = global_position
		var direction = ""
		if abs(diff.x) > abs(diff.y):
			if diff.x < 0:
				direction = "left"
			else:
				direction = "right"
		else:
			if diff.y > 0:
				direction = "front"
			else:
				direction = "back"
		play(direction)
		
		
		if position.y > 1:
			z_index = 1
		else:
			z_index = -1
