extends CharacterBody2D

var gravity := 25
var coins = 0
const JUMP_POWER = -500

func _physics_process(delta):
	move()

	
func move():
	if Input.is_action_pressed("right"):
		position.x += 5
	if Input.is_action_pressed("left"):
		position.x -= 5
		
	velocity.y += gravity
	if Input.is_action_just_pressed("ui_accept") && is_on_floor():
		velocity.y = JUMP_POWER
	move_and_slide()
	


func GetCoin(): 
	coins += 1 
