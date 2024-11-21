extends Node2D
class_name LevelParent

var RightCart;
var LeftCart;

var hasRightCart: bool;
var hasLeftCart: bool;

var levels = ["res://Scenes/Levels/level1.tscn", "res://Scenes/Levels/level2.tscn", "res://Scenes/Levels/level3.tscn", "res://Scenes/Levels/level4.tscn", "res://Scenes/Levels/level5.tscn"]
var current_level;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$AudioStreamPlayer.play()

func _on_to_right_body_entered(body):
	if hasRightCart:
#		call_deferred("toRightCart");
		call_deferred("load_next_level")

func _on_to_left_body_entered(body):
	if hasLeftCart:
#		call_deferred("toLeftCart");
		call_deferred("load_previous_level")

func toRightCart():
	get_tree().change_scene_to_packed(RightCart)
	print("RightTriggered")
	
func toLeftCart():
	get_tree().change_scene_to_packed(LeftCart);
	print("LeftTriggered")

func load_next_level():
	if current_level < levels.size() - 1:
		current_level += 1
		get_tree().change_scene_to_file(levels[current_level])

func load_previous_level():
	if current_level > 0:
		current_level -= 1
		get_tree().change_scene_to_file(levels[current_level])
