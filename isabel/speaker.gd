extends Sprite2D

const REGULAR = preload("res://images/music.png");
const HIGHLIGHT = preload("res://images/music_y.png");
var here = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if here and Input.is_action_just_pressed("enter"):
		get_tree().change_scene_to_file("res://music.tscn");


func _on_area_2d_body_entered(_body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.2,0.2);
	position.x = 433.0;
	position.y = 625.0;
	here = true;
func _on_area_2d_body_exited(_body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.3,0.3);
	position.x = 433.0;
	position.y = 611.0;
	here = false;
