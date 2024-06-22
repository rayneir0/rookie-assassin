extends PathFollow2D

@export var runSpeed = 20
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_progress(get_progress() + runSpeed * delta)
