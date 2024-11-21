extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.SAM == 0 and Globals.CANDY == false and Globals.SPEAKING:
		Globals.SPEAKING = false;
		print(Globals.SAM)
	if Globals.SAM == 0 and Globals.CANDY == true and Globals.SPEAKING:
		Globals.SAM += 1;
		Globals.CHARM = true;
		Globals.SPEAKING = false;
		print(Globals.SAM)
	if Globals.SAM == 1:
		$DASadMan.text_key = "sad_man_grateful"
	if Globals.SAM == 1 and Globals.CHARM == true and Globals.SPEAKING:
		Globals.SAM += 1;
		Globals.SPEAKING = false;
		print(Globals.SAM)
	if Globals.SAM == 2:
		$DASadMan.text_key = "sad_man_content"

