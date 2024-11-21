extends LevelParent


# Called when the node enters the scene tree for the first time.
func _ready():
	#LeftCart = preload("res://Scenes/Levels/level2.tscn")
	hasLeftCart = true;
	#RightCart = preload("res://Scenes/Levels/level4.tscn")
	hasRightCart = true;
	
	current_level = 2;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
