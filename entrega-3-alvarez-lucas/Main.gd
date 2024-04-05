extends Node

func _ready():
	$Player.set_proyectile_container(self)
	$Turret.set_values($Player,self)
