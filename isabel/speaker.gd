extends Sprite2D

const REGULAR = preload("res://images/music.png");
const HIGHLIGHT = preload("res://images/music_y.png");

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	texture = HIGHLIGHT;
	scale = Vector2(0.2,0.2);
	position.x = 433.0;
	position.y = 625.0;
func _on_area_2d_body_exited(body: Node2D) -> void:
	texture = REGULAR;
	scale = Vector2(0.3,0.3);
	position.x = 433.0;
	position.y = 611.0;
