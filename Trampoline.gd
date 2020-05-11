extends Area2D


func _physics_process(delta):
	var Bodies = get_overlapping_bodies()
	for body in Bodies:
		if body.name == "Player":
			body.position.y -= 13000 * delta
			
