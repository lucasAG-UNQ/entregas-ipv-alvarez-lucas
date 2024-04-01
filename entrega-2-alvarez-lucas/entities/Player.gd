extends Sprite

export (float) var speed:float=1

func _process(delta):
	var direction=0;
	if Input.is_action_pressed("mover_der"):
		direction=1
	elif Input.is_action_pressed("mover_izq"):
		direction=-1
	
	position.x+=direction*speed*delta
	
