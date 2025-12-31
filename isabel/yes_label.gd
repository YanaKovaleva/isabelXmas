extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_right_pressed() -> void:
	show()
	await get_tree().create_timer(2.0).timeout; #from godot forum
	get_tree().change_scene_to_file("res://main.tscn");
