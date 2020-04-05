extends Control
#Toggle pause state based on Global.is_paused
func _process(delta):
	get_tree().paused = Global.is_paused
	visible = Global.is_paused

#Handles pause input and toggles Global pause bool 
func _input(event):
	if event.is_action_pressed("pause"):
		Global.is_paused = true
		
		#CODE BELOW: Snippet to toggle pause state with one button
		#var updated_state = not get_tree().paused
		#get_tree().paused = updated_state
		#visible = updated_state
