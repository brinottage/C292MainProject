extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	restart_game()

func restart_game():
	if Globals.COMP == true and Input.is_action_pressed("Restart"):
		print("restart")
		var executable_path = OS.get_executable_path()
		get_tree().quit()
		OS.execute(executable_path, []) 
