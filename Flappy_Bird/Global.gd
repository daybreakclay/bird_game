extends Node
#Global variable to control Game State
var player_ready = false
var game_over = false
var is_paused = false
var score = 0

func state_controller():
	var game_over_scene = "res://src/Levels/Game Over.tscn"
	var main_scene = "res://src/Levels/TestLevel.tscn"
	
	is_paused = false
	player_ready = false
	
	if(!game_over):
		game_over = true
		get_tree().change_scene(game_over_scene)
	elif (game_over):
		
		game_over = false
		score = 0
		get_tree().change_scene(main_scene)
	else:
		return
