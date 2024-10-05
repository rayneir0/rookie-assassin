extends "res://scripts/lever.gd"


# Called when the node enters the scene tree for the first time.
func _ready():
	lever_sprite = $lever_sprite
	enemy_collision = $enemy_collision
	player_collision = $player_collision
	pit_sprite = %pit_sprite


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
