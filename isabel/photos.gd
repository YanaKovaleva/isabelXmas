extends Sprite2D

const REGULAR = preload("res://images/photos.png")
const HIGHLIGHT = preload("res://images/table_y.png")
var here = false;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture = REGULAR;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if here and Input.is_action_just_pressed("enter"):
		get_tree().change_scene_to_file("res://photos.tscn");



func _on_area_2d_body_entered(_body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.253,0.253);
	position.x = 383.0;
	position.y = 406.0;
	here = true;


func _on_area_2d_body_exited(_body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.4,0.4);
	position.x=380.0;
	position.y=383.0;
	here = false;
