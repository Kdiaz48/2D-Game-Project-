extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var Bullet = preload("res://Enemybullet.tscn")

var player = null
var canshoot = true

@export var speed = 3

@onready var spawnpos = $Spawnpos

		
func _physics_process(delta):
	var movement = Vector2(-speed,0)
	
	if player:
		movement = position.direction_to(player.position) * speed
	movement = move_and_collide(movement)
	
	if not is_on_floor():
		velocity.y += gravity * delta
	
func _on_Shootspeed_timeout():
	canshoot = true
	if player != null:
		shoot()
		
func shoot():
	if canshoot:
		var bullet = Bullet.instantiate()
		bullet.position = spawnpos.global_position
		get_parent().add_child(bullet)
		
		$Shootspeed.start()
		canshoot = false


func _on_detection_body_entered(body):
	if body.is_in_group("yan-scene"):
		player = body # Replace with function body.
