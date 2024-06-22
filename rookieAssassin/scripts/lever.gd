extends Area2D

var char_in = false
@onready var lever_sprite = %lever_sprite
@onready var pit_sprite = %pit_sprite
@onready var player_collision = %player_collision
@onready var enemy_collision = %enemy_collision
var lever_flipped = false

# Called when the node enters the scene tree for the first time.
func _ready():
	disable_collisions(true)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if char_in and Input.is_action_just_pressed("interact"):
		toggle_lever()
		
func disable_collisions(boolean):
	player_collision.set_deferred("disabled", boolean)
	enemy_collision.set_deferred("disabled", boolean)

func toggle_lever():
	if lever_flipped:
		disable_collisions(true)
		play_animation_backwards()
	else:
		disable_collisions(false)
		play_animation()
	lever_flipped = not lever_flipped

func play_animation():
	lever_sprite.play("default")
	pit_sprite.play("default")
	
func play_animation_backwards():
		lever_sprite.play_backwards("default")
		pit_sprite.play_backwards("default")

func _on_body_entered(body):
	char_in = true
