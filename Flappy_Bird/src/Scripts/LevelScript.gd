extends Node2D
#Comment to test Git Control
onready var myTimer = get_node("Timer")
#Control Pipe Spawn
##Preload Pipe asset

var pipe = load("res://src/Actors/Pipe.tscn")
var pipe_pos = rand_range(400, 250)

var time_keeper = 0

func _ready():
	
	myTimer.start()

func update_score():
	$Score.text = str(Global.score)

func _draw():
	myTimer.wait_time = rand_range(0.5, 0.8)
	
#Handle pipe spawning
	if(Global.player_ready):
		
		var pipe_spawn = pipe.instance()
		pipe_spawn.position.y = pipe_pos
		add_child(pipe_spawn)
		print("Pipe added from Level Script ", time_keeper)
	#if(Global.game_over):
	#	pipe_spawn.free()


func _process(_delta):
	update_score()


func _on_Timer_timeout():
	if (Global.game_over == false):
		if(Global.player_ready):
			_draw()

	time_keeper = time_keeper + 1
	print(time_keeper, " cycle(s) passed.")


func _on_Area2D_body_entered(_body):
	Global.score = Global.score + 1
	print("The score is ", Global.score)
