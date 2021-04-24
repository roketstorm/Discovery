extends KinematicBody

const MOVE_SPEED = 4
const MOUSE_SENS = 0.5

#func _input(event):
#	if event is InputEventMouseMotion:
#		rotation_degrees.y -= MOUSE_SENS * event.relative.x
		
func _physics_process(delta):
	var move_vec = Vector3()
	if Input.is_action_pressed("move_forwards") || get_node("Camera/HUD/ButtonUp").pressed:
		move_vec.z -= 20
	if Input.is_action_pressed("move_backwards") || get_node("Camera/HUD/ButtonDown").pressed:
		move_vec.z += 20
	if Input.is_action_pressed("turn_left") || get_node("Camera/HUD/ButtonLeft").pressed:
		rotation_degrees.y += 1
	if Input.is_action_pressed("turn_right") || get_node("Camera/HUD/ButtonRight").pressed:
		rotation_degrees.y -= 1
		
	move_vec = move_vec.normalized()
	move_vec = move_vec.rotated(Vector3(0, 1, 0), rotation.y)
	move_and_collide(move_vec * MOVE_SPEED * delta)
