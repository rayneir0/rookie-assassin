extends Area2D

signal activated

var char_in = false
var lever_flipped = false
@onready var lever_sprite = %pit_sprite
@onready var enemy_collision = %enemy_collision
@onready var player_collision =  %player_collision
@onready var pit_sprite = %lever_sprite
	
# Called when the node enters the scene tree for the first time.
func _ready():
	disable_collisions(true)
	
#func _process(delta):
	#if char_in and Input.is_action_just_pressed("interact"):
		#_on_button_pressed()
		#
func disable_collisions(boolean):
	player_collision.set_deferred("disabled", boolean)
	enemy_collision.set_deferred("disabled", boolean)

func play_animation():
	lever_sprite.play("default")
	pit_sprite.play("default")
	
func play_animation_backwards():
	lever_sprite.play_backwards("default")
	pit_sprite.play_backwards("default")

func _on_body_entered(body):
	char_in = true

func _on_button_pressed():
	if lever_flipped:
		disable_collisions(true)
		play_animation_backwards()
	else:
		disable_collisions(false)
		play_animation()
	lever_flipped = not lever_flipped

func _input(event):
	if event.is_action_pressed("interact") : # Default space key mapping in Godot is "ui_select"
		_on_button_pressed()
