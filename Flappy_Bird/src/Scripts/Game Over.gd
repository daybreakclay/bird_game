extends Node2D


func _input(_event):
	if(Input.is_action_just_pressed("jump")):
		Global.state_controller()


func _on_button_start_pressed():
	Global.state_controller()
	


func _on_button_options_pressed():
	pass # Replace with function body.


func _on_button_credits_pressed():
	pass # Replace with function body.
