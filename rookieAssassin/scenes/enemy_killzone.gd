extends Area2D
@onready var timer = $Timer
@onready var enemy_death = %enemy_death

func _on_body_entered(body):
	enemy_death.play("death")
	

