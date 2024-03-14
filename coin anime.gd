extends Sprite2D

func _on_body_entered(body):
	if body.has_method("GetCoin"):
		$AnimationPlayer.play("coin")
	
func _ready():
	$AnimationPlayer.play("coin")

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("scored_a_point")
	
	counter += 1 
	if counter > 50:
		emit_signal("counter_max_reached")
		counter = 0 
	
