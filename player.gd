extends CharacterBody2D

var bullet = preload("res://Bullet.tscn")

var gravity := 10
var b
const JUMP_POWER = -500

func _physics_process(delta):
	move()
	shoot()
	
func move():
	if Input.is_action_pressed("right"):
		position.x += 5
	if Input.is_action_pressed("left"):
		position.x -= 5
		
	velocity.y += gravity
	if Input.is_action_just_pressed("ui_accept") && is_on_floor():
		velocity.y = JUMP_POWER
	move_and_slide()
	
func shoot():
	if Input.is_action_just_pressed("shoot"):
		b = bullet.instantiate()
		get_parent().add_child(b)
		b.global_position = $Marker2D.global_position
		
		
		
