extends CharacterBody2D

var movespeed = 10
var bullet_speed = 1000
var bullet = preload("res://Bullet.tscn")

func _ready():
	pass

func _physics_process(delta):
	
	if Input.is_action_just_pressed("up"):
		position.y -= 1
	if Input.is_action_pressed("right"):
		position.x += 1
	if Input.is_action_pressed("left"):
		position.x -= 1
	
	
	if Input.is_action_just_pressed("LMB"):
		fire()
	
func fire():
	var bullet_instance = bullet.instance()
	bullet_instance.position = get_global_position()
	bullet_instance.rotation_degress = rotation_degrees
	bullet_instance.apply_impulse(Vector2(),Vector2(bullet_speed,0).rotated(rotation))
	get_tree().get_root().call_deferred("add_child",bullet_instance)
	
	

