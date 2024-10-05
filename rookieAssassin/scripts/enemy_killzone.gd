extends Area2D
@onready var timer = $Timer

func _on_body_entered(body):
	body.queue_free()


