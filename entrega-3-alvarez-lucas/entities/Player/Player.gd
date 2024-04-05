extends Sprite

export (float) var speed:float=150
onready var cannon = $Cannon

var proyectile_container:Node

func set_proyectile_container(container:Node):
	cannon.proyectile_container=container
	proyectile_container=container

func _process(delta):
	var direction:int= int(Input.is_action_pressed("mover_der")) - int(Input.is_action_pressed("mover_izq"))
	position.x+=direction*speed*delta
	
	var mouse_position = get_global_mouse_position()
	cannon.look_at(mouse_position)

	if Input.is_action_just_pressed("shoot"):
		cannon.shoot()
