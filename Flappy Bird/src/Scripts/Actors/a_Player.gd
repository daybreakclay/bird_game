extends Area2D
var velocity = Vector2()

func _physics_process(delta):
	if(Global.player_ready):
		velocity.y += 50
		position += velocity * delta

func _input(_event):
	if (!Global.game_over):
		if Input.is_action_just_pressed("jump"):
			Global.player_ready = true
			velocity.y = -900
	else:
		return

func _on_Player_body_entered(_body):
	Global.state_controller()
	print("Game Over")


