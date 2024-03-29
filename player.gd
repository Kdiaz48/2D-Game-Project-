extends CharacterBody2D

var bullet = preload("res://Bullet.tscn")

var gravity := 25
var b
var coins = 0
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



func GetCoin(): 
	coins += 1 

func _on_fallzone_body_entered(body):
	get_tree().change_scene("res://DESIGN SCENE")
