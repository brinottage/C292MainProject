extends LevelParent


# Called when the node enters the scene tree for the first time.
func _ready():
	#LeftCart = preload("res://Scenes/Levels/level1.tscn")
	hasLeftCart = true;
	#RightCart = preload("res://Scenes/Levels/level3.tscn")
	hasRightCart = true;
	
	current_level = 1;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
