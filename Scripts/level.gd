extends Node2D
class_name LevelParent

var RightCart;
var LeftCart;

var hasRightCart: bool;
var hasLeftCart: bool;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_to_right_body_entered(body):
	if hasRightCart:
		call_deferred("toRightCart");

func _on_to_left_body_entered(body):
	if hasLeftCart:
		call_deferred("toLeftCart");

func toRightCart():
	get_tree().change_scene_to_packed(RightCart)
	print("RightTriggered")
	
func toLeftCart():
	get_tree().change_scene_to_packed(LeftCart);
	print("LeftTriggered")
