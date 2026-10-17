extends RigidBody2D
class_name PlayerMovement

var walkSpeed = 300
var moveEnabled = true;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if(moveEnabled):
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
		if(direction == Vector2.ZERO):
			$Sprite2D.frame = 0
			$Sprite2D.stop()
		if(direction.x > 0):
			$Sprite2D.play("WalkRight")
		elif(direction.x < 0):
			$Sprite2D.play("WalkLeft")
		elif(direction.y > 0):
			$Sprite2D.play("WalkDown")
		elif(direction.y < 0):
			$Sprite2D.play("WalkUp")			
		linear_velocity = direction * walkSpeed
	else:
		linear_velocity = Vector2.ZERO
		$Sprite2D.stop()
		$Sprite2D.frame = 0

func ChangeScene(goPos: Vector2):
	if (goPos != null):
		moveEnabled = false
		var tween = get_tree().create_tween()
		tween.tween_property($".", "global_position", goPos, 3)
		tween.tween_callback(FinishedSceneChange)

func FinishedSceneChange():
	moveEnabled = true
	
func EnteredDialog():
	moveEnabled = false
	pass

func _on_body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int) -> void:
	#check if we thing has dialog
	pass # Replace with function body.
