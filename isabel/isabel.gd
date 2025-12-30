extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(_delta: float) -> void:
	var direction1 = 0;
	# Add the gravity.
	#if not is_on_floor():
	#	velocity += get_gravity() * delta
	
	# Handle jump.
	if Input.is_action_pressed("up"):
		direction1-=1;
	if Input.is_action_pressed("down"):
		direction1+=1;	
	velocity.y = direction1 * SPEED;

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

#		Idea is that the body shouldn't get out of the room
#func _on_world_area_body_exited(body: Node2D) -> void:
#	Isabel.position = 110;


func _on_left_boundary_body_entered(_body: Node2D) -> void:
	velocity.x = 5 * SPEED;
	move_and_slide()


func _on_right_boundary_body_entered(_body: Node2D) -> void:
	velocity.x = -5 * SPEED;
	move_and_slide()

func _on_top_boundary_body_entered(_body: Node2D) -> void:
	velocity.y = 5 * SPEED;
	move_and_slide()

func _on_bottom_boundary_body_entered(_body: Node2D) -> void:
	velocity.y = -5 * SPEED;
	move_and_slide()
