extends Sprite2D

const REGULAR = preload("res://images/game.png");
const HIGHLIGHT = preload("res://images/game_y.png");
var here = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if here and Input.is_action_just_pressed("enter"):
		get_tree().change_scene_to_file("res://game.tscn");


func _on_area_2d_body_entered(_body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.315,0.315);
	position.x = 207.0;
	position.y = 265.0;
	here = true;
	#if (Input.is_action_pressed("enter")):
	#	get_tree().change_scene_to_file("res://game.tscn");


func _on_area_2d_body_exited(_body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.5,0.5);
	position.x = 200.0;
	position.y = 265.0;
	here = false;
