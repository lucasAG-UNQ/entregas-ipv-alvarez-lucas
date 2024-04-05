extends Sprite

export (PackedScene) var proyectile_scene
var proyectile_container:Node
var player
onready var sh_pos:Position2D=$ShootPosition

func set_values(player, container):
	self.player=player
	self.proyectile_container=container
	$Timer.start()

func _on_Timer_timeout():
	shoot()

func shoot():
	var proyectile:Proyectile = proyectile_scene.instance()
	proyectile_container.add_child(proyectile)
	proyectile.set_initial_values(sh_pos.global_position,(player.global_position-sh_pos.global_position).normalized())
	proyectile.connect("delete_requested",self,"_on_proyectile_delete_request")

func _on_proyectile_delete_request(proyectile):
	proyectile_container.remove_child(proyectile)
	proyectile.queue_free()
