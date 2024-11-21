extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	print(Globals.OM)
#	print($DAOldMan.text_key)
#	print(Globals.SPEAKING)
	if Globals.OM == 1:
		$DAOldMan.text_key = "old_man_grateful"
	if Globals.OM == 2:
		$DAOldMan.text_key = "old_man_content"


func _on_area_2d_body_exited(body):
	print("exited")
	if Globals.OM == 0 and Globals.CIG == false and Globals.SPEAKING:
		Globals.SPEAKING = false;
		print(Globals.OM)
	if Globals.OM == 0 and Globals.CIG == true and Globals.SPEAKING:
		Globals.OM += 1;
		Globals.DOLL = true;
		Globals.SPEAKING = false;
		print(Globals.OM)
	if Globals.OM == 1 and Globals.DOLL == true and Globals.SPEAKING:
		Globals.OM += 1;
		Globals.SPEAKING = false;
		print(Globals.OM)
