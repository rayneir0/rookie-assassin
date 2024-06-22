extends Area2D

var char_in = false
var lever_flipped = false
@onready var lever_sprite = %lever_sprite
@onready var pit_sprite = %pit_sprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		if Input.is_action_pressed("interact") and char_in and lever_flipped == false :
			lever_sprite.play("default")
			lever_flipped = true
			pit_sprite.play("default")
			
		
	

func _on_body_entered(body):
	char_in = true
