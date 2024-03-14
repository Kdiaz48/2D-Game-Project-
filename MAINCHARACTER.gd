
extends Sprite2D

@onready var animator = $"AnimationPlayer"

const GRAVITY = 10 
const JUMP_POWER = -300

var velocity = Vector2.ZERO

func _physics_process(delta):
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_POWER

	
func move():
	if Input.is_action_pressed("right"):
		position.x += 5
	if Input.is_action_pressed("left"):
		position.x -= 5
		

		
#func move():
	if Input.is_action_pressed("ui_right"):
		position.x += 5 
	if Input.is_action_pressed("left"):
		position.x -= 5
	if Input.is_action_just_pressed("ui_up"):
		position.y -= 5
	if Input.is_action_just_pressed("ui_down"):
		position.y += 5
		
	

#func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		$AnimationPlayer.play("walk_right")
	else:
		$AnimationPlayer.play("idle_right")
#	if Input.is_action_just_pressed("ui_accept"):
#		$AnimatedPlayer.play("jump")
\

		
