extends Sprite2D

const REGULAR = preload("res://images/photos.png")
const HIGHLIGHT = preload("res://images/table_y.png")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	texture = REGULAR;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_2d_body_entered(body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.253,0.253);
	position.x = 383.0;
	position.y = 406.0;


func _on_area_2d_body_exited(body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.4,0.4);
	position.x=380.0;
	position.y=383.0;
