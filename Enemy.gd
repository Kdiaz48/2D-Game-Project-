extends CharacterBody2D

var Bullet = preload("res://Enemybullet.tscn")

var player = null
var canshoot = true

@export var speed = 3

@onready var spawnpos = $Spawnpos

func _on_Detection_body_entered(body):
	if body.is_in_group("Yan-scene"):
		player = body
		
func _physics_process(delta):
	var movement = Vector2(-speed,0)
	
	if player:
		movement = position.direction_to(player.position) * speed
	movement = move_and_collide(movement)

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
