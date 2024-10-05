extends Node2D

signal toggle_lever

var char_in = false

func _process(delta):
	if char_in and Input.is_action_just_pressed("interact"):
		emit_signal("toggle_lever")

func _on_lever_action_1_body_entered(body):
	if body.has_method("player"):
		print(body)
		char_in = true


func _on_lever_action_1_body_exited(body):
	if body.has_method("player"):
		char_in = false

func _on_lever_action_2_body_entered(body):
	if body.has_method("player"):
		print(body)
		char_in = true

func _on_lever_action_2_body_exited(body):
	if body.has_method("player"):
		char_in =false

