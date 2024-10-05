extends Control

@onready var quitButton = $CanvasLayer/MarginContainer/VBoxContainer/Quit
@onready var playButton = $CanvasLayer/MarginContainer/VBoxContainer/Play
@onready var fade = $CanvasLayer/ColorRect/AnimationPlayer
var transistioned = false
func transition():
	fade.play("fade_to_normal")
	
func _on_play_pressed():
	transistioned = true
	transition()
	playButton.visible = false
	playButton.disabled = true
	quitButton.visible = false
	quitButton.disabled = true
	

func _on_quit_pressed():
	get_tree().quit()

func _input(event):
	if event.is_action_pressed("space") && transistioned == true: # Default space key mapping in Godot is "ui_select"
		fade.play("fade_to_grey")
		reset()
		
func reset():
	transistioned = false
	playButton.visible = true
	playButton.disabled = false
	quitButton.visible = true
	quitButton.disabled = false
	
