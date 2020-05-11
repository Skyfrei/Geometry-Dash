extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const JUMP = -480
const MAX_SPEED = 325

var motion = Vector2()

func _physics_process(delta):
	motion.x += 4
	$Sprite.play("Run")
	motion.y += GRAVITY
	if motion.x >= MAX_SPEED :
		motion.x = MAX_SPEED
	if is_on_floor():
		if Input.is_mouse_button_pressed(BUTTON_LEFT):
			motion.y = JUMP
	else:
		if motion.y < 0:
			$Sprite.play("Jump")
		else:
			$Sprite.play("Fall")
		if motion.y > 1500:
			get_tree().reload_current_scene()
	
	motion = move_and_slide(motion, UP)
	pass


