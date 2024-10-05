extends Control

@onready var quitButton = $CanvasLayer/Buttons/VBoxContainer/Quit
@onready var playButton = $CanvasLayer/Buttons/VBoxContainer/Play
@onready var fade = $CanvasLayer/ColorRect/AnimationPlayer
@onready var player = %player
@onready var buttons = $CanvasLayer/Buttons
@onready var text = $CanvasLayer/Text

var transistioned = false

func _ready():
	player.speed = 0
	
	
func transition():
	fade.play("fade_to_normal")
	
func _on_play_pressed():
	player.speed = 200
	transistioned = true
	transition()
	buttons.visible = false
	text.visible = false
	playButton.disabled = true
	quitButton.disabled = true
	

func _on_quit_pressed():
	get_tree().quit()

func _input(event):
	if event.is_action_pressed("space") && transistioned == true: # Default space key mapping in Godot is "ui_select"
		fade.play("fade_to_grey")
		reset()
		
func reset():
	player.speed = 0
	transistioned = false
	buttons.visible = true
	text.visible = true
	playButton.disabled = false
	quitButton.disabled = false
	
