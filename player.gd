extends CharacterBody2D

var score = 0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * 600
	move_and_slide()
	
	if velocity.length() > 0.0:
		%HappyBoo.play_walk_animation()
	else:
		%HappyBoo.play_idle_animation()

func eat_snack(snack_points: int) -> void:
	score += snack_points
	%ProgressBar.value = score
