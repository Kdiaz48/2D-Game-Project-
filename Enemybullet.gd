extends Area2D

var speed = 400

func _physics_process(delta):
	position.x -= delta * speed

# Called when the node enters the scene tree for the first time.
