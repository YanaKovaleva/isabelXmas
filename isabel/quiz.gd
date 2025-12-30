extends Sprite2D

const REGULAR = preload("res://images/quiz.png")
const HIGHLIGHT = preload("res://images/quiz_y.png")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_area_2d_body_entered(_body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.3,0.3);
	position.x = 250.0;
	position.y = 585.0;


func _on_area_2d_body_exited(_body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.4,0.4);
	position.x = 227.0;
	position.y= 573.0;
