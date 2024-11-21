extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.OM == 1:
		$DAOldMan.text_key = "old_man_grateful"
	elif Globals.OM == 2:
		$DAOldMan.text_key = "old_man_content"

func _on_area_2d_body_exited(body):
	if Globals.OM == 1:
		Globals.OM += 1;

func _on_area_2d_body_entered(body):
	pass
#	if Globals.OM == 1 and Globals.CIG == true:
#		Globals.OM += 1;
