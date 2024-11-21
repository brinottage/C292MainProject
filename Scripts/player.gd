extends CharacterBody2D

var stationary: bool = true;
var move_lock: bool = false;

#@export var shady_man: int = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("IdleRight")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	move_and_slide();
	move_left();
	move_right();
	
	#print(Globals.SM)

func move_left():
	if Input.is_action_pressed("MoveLeft") and !move_lock:
		position += Vector2(-6, 0);
		$AnimatedSprite2D.play("WalkLeft");
		stationary = false
	if Input.is_action_just_released("MoveLeft"):
		$AnimatedSprite2D.stop();
		$AnimatedSprite2D.play("IdleLeft")
		stationary = true;

func move_right():
	if Input.is_action_pressed("MoveRight") and !move_lock:
		position += Vector2(6, 0);
		$AnimatedSprite2D.play("WalkRight");
		stationary = false;
	if Input.is_action_just_released("MoveRight"):
		$AnimatedSprite2D.stop();
		$AnimatedSprite2D.play("IdleRight")
		stationary = true;
