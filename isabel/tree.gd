extends Sprite2D

const REGULAR = preload("res://images/tree.png");
const HIGHLIGHT = preload("res://images/tree_y.png");

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.315,0.315);
	position.x = 407.0;
	position.y = 164.0;


func _on_area_2d_body_exited(body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.5,0.5);
	position.x = 401.0;
	position.y = 154.0;
