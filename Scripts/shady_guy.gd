extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print($DAShadyGuy.text_key)
	if Globals.SM == 1:
		$DAShadyGuy.text_key = "shady_guy_done"


func _on_area_2d_body_exited(body):
	if Globals.SM == 0 and Globals.SPEAKING:
		Globals.SM += 1;
		Globals.CIG = true;
		Globals.SPEAKING = false;
