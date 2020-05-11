extends Area2D

export(String, FILE, "*.tscn") var world_scene

func _physics_process(delta: float) -> void:
	var Bodies = get_overlapping_bodies()
	for body in Bodies:
		if body.name == "Player":
			get_tree().change_scene(world_scene)
