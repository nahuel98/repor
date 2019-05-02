extends KinematicBody2D

var p_velocity = Vector2(0,0)

func _physics_process(delta):
	getMove()
	move_and_slide(p_velocity)

func getMove():
	if Input.is_action_pressed("ui_right"):
		p_velocity.x += 10
	if Input.is_action_pressed("ui_left"):
		p_velocity.x -= 10
	if Input.is_action_pressed("ui_up"):
		p_velocity.y -= 10
	if Input.is_action_pressed("ui_down"):
		p_velocity.y += 10