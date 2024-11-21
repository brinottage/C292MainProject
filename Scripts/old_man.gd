extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Globals.OM == 0 and Globals.CIG == false and Globals.SPEAKING:
		Globals.SPEAKING = false;
		print(Globals.OM)
	if Globals.OM == 0 and Globals.CIG == true:
		Globals.OM += 1;
		Globals.DOLL = true;
		Globals.SPEAKING = false;
		print(Globals.OM)
	if Globals.OM == 1:
		$DAOldMan.text_key = "old_man_grateful"
	if Globals.OM == 1 and Globals.DOLL == true and Globals.SPEAKING:
		Globals.OM += 1;
		Globals.SPEAKING = false;
		print(Globals.OM)
	if Globals.OM == 2:
		$DAOldMan.text_key = "old_man_content"

