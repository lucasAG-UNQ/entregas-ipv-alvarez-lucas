extends Sprite

class_name Proyectile
var direction:Vector2
export var speed:float=50

signal delete_requested(proyectile)

func _ready():
	set_physics_process(false)

func set_initial_values(starting_position:Vector2, dir:Vector2):
	global_position=starting_position
	self.direction=dir
	$Timer.start()
	set_physics_process(true)

func _physics_process(delta):
	position += direction * speed *delta


func _on_Timer_timeout():
	emit_signal("delete_requested", self)
