extends Position2D

export (PackedScene) var turret_scene

func _ready():
	call_deferred("initialize")

func initialize():
	for i in 3:
		var turret_instance = turret_scene.instance()
		
		var turret_pos:Vector2 = Vector2(rand_range(position.x-100, position.x+100), rand_range(position.y + 30, position.y -30))
		
		turret_instance.initialize(self, turret_pos, self)
