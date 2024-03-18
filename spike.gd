extends Area2D

func _on_spikes_body_entered(body):
	get_tree().change_scene("res://DESIGN SCENE")


func _on_body_entered(body):
	call_deferred("respawn")
	
func respawn():
	get_tree().change_scene_to_file("res://DESIGN SCENE.tscn")
	print("testing")
