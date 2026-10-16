extends RigidBody2D

class_name PlayerMovement

var walkSpeed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var direction = Vector2.ZERO
	#handle input
	if(Input.is_action_pressed("Right")):
		direction.x += 1
		pass
	if(Input.is_action_pressed("Left")):
		direction.x -= 1
		pass
	if(Input.is_action_pressed("Up")):
		direction.y -= 1
		pass
	if(Input.is_action_pressed("Down")):
		direction.y += 1
		pass
	linear_velocity = direction * walkSpeed
	pass


func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	#check if we thing has dialog
	pass # Replace with function body.
