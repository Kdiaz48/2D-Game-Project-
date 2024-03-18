extends Sprite2D

func _on_body_entered(body):
	if body.has_method("GetCoin"):
		body.GetCoin()
		queue_free()
	
	

func _on_static_body_2d_body_entered(body):
	
	if body.has_method("GetCoin"):
		body.GetCoin()
		queue_free()
	
