extends CharacterBody2D

var moveSpeed : int = 150

func _physics_process(delta):
	
	velocity.x=0
	velocity.y=0
	
	if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		velocity.x-=1
	
	if Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		velocity.x+=1
	
	if Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W):
		velocity.y-=1
	
	if Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S):
		velocity.y+=1	
	
	velocity*=moveSpeed
	
	move_and_slide()
