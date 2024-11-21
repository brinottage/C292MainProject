extends Sprite2D

var win_level = "res://Scenes/Levels/win.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_2d_body_entered(body):
	if Globals.CHARM == true:
		call_deferred("change_scene_to_win")

func change_scene_to_win():
	get_tree().change_scene_to_file(win_level)
