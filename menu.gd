extends Control

func _process(delta):
	pass


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://DESIGN SCENE.tscn")


func _on_options_button_pressed():
	get_tree().change_scene_to_file("res://gameoptions.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
