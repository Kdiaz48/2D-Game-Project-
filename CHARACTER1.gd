extends CharacterBody2D

var gravity := 25
var coins = 0
const JUMP_POWER = -500
const SPEED = 100 
@onready var animation = $AnimatedSprite2D


func _physics_process(delta):
	move()

	
func move():
	if Input.is_action_pressed("right"):
		position.x += 5
		$AnimatedSprite2D.flip_h = false
		animation.play("RUN")
	elif Input.is_action_pressed("left"):
		position.x -= 5
		$AnimatedSprite2D.flip_h = true
		animation.play("RUN")
	else: 
		animation.play("IDLE")
	velocity.y += gravity
	if Input.is_action_just_pressed("ui_accept") && is_on_floor():
		velocity.y = JUMP_POWER
	move_and_slide()
	


func GetCoin(): 
	coins += 1 
