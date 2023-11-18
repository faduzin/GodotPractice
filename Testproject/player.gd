extends CharacterBody2D
 
func _physics_process(delta):
	velocity.y += 4
	if Input.is_action_pressed("ui_right"):
		velocity.x = 50
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("Walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -50
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("Walk")
	else:
		velocity.x = 0
		$AnimatedSprite2D.play("Idle")
	
	if Input.is_action_just_pressed("ui_up") && velocity.y == 4:
		velocity.y = -100
		
	
	move_and_slide()
