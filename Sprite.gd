extends Sprite


var motion = Vector2()
func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		self.position.y-=20
	if(self.position.y!=20):
		self.position.y+=8
