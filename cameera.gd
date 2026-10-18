extends Camera2D

@export var target: Node2D

func _physics_process(delta: float) -> void:
	if target:
		var goal = Vector2()
		goal.x = round(target.position.x / 1080.0) * 1080
		goal.y = round(target.position.y / 1080.0) * 1080
		
		position = lerp(position, goal, delta * 3.0)
