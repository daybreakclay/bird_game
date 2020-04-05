extends Node2D


func _input(_event):
	if(Input.is_action_just_pressed("jump")):
		Global.state_controller()


func _on_TextureButton_pressed():
	Global.state_controller()
	
