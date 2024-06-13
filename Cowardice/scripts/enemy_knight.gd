extends CharacterBody2D
var player_chase = 40
var player = null

func _physics_process(delta):
	velocity = Vector2.ZERO
	if player:
		velocity += position.direction_to(player.position) * player_chase
	move_and_slide()
	
func _on_detectionzone_body_entered(body):
	player = body
	
func _on_detectionzone_body_exited(body):
	player = null
