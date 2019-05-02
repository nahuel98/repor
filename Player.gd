extends KinematicBody2D

var p_velocity = Vector2(15,0) # Otorga movimiento inicial

func _physics_process(delta):
	# Checkea si se presionaron teclas
	get_move()
	# Aplica las fisicas de movimiento
	move_and_slide(p_velocity)

func get_move():
	if Input.is_action_pressed("ui_right"):
		p_velocity.x += 15
	if Input.is_action_pressed("ui_left"):
		p_velocity.x -= 15
	if Input.is_action_pressed("ui_up"):
		p_velocity.y -= 15
	if Input.is_action_pressed("ui_down"):
		p_velocity.y += 15
