extends KinematicBody2D


var movement = Vector2()
var pipe_spawn_pos = Vector2()

func _init():
	print("Pipe created in pipe script")


func _physics_process(delta):
	position.x -= 350 * delta
	#movement.x -= 5
	#movement = move_and_slide(movement)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	print("Pipe Destroyed")



