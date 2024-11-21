extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	print(Globals.OM)
#	print($DAOldMan.text_key)
#	print(Globals.SPEAKING)
	if Globals.LG == 1:
		$DALittleGirl.text_key = "little_girl_grateful"
	if Globals.LG == 2:
		$DALittleGirl.text_key = "little_girl_content"


func _on_area_2d_body_exited(body):
	print("exited")
	if Globals.LG == 0 and Globals.DOLL == false and Globals.SPEAKING:
		Globals.SPEAKING = false;
		print(Globals.LG)
	if Globals.LG == 0 and Globals.DOLL == true and Globals.SPEAKING:
		Globals.LG += 1;
		Globals.CANDY = true;
		Globals.SPEAKING = false;
		print(Globals.LG)
	if Globals.LG == 1 and Globals.CANDY == true and Globals.SPEAKING:
		Globals.LG += 1;
		Globals.SPEAKING = false;
		print(Globals.LG)
