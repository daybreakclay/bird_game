extends Node2D

func _input(event):
	if event.is_action_pressed("jump"):
		Global.is_paused = false
		
	if event.is_action_pressed("restart"):
		Global.state_controller()
