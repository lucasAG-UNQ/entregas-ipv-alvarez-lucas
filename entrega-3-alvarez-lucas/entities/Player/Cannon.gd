extends Sprite

onready var sh_pos:Position2D= $ShootPosition
export(PackedScene) var proyectile_escene:PackedScene

var proyectile_container:Node

func shoot():
	var proyectile_instance:Proyectile= proyectile_escene.instance()
	proyectile_container.add_child(proyectile_instance)
	proyectile_instance.set_initial_values(sh_pos.global_position, (sh_pos.global_position - global_position).normalized())
	proyectile_instance.connect("delete_requested",self,"_on_proyectile_delete_requested")

func _on_proyectile_delete_requested(proyectile):
	proyectile_container.remove_child(proyectile)
	proyectile.queue_free()
