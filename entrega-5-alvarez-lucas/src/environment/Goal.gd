extends Area2D

onready var animated_sprite = $AnimatedSprite


func _ready() -> void:
	connect("body_entered", self, "_on_body_entered")


func _on_body_entered(body: Node) -> void:
	print("You win!")
	animated_sprite.play("goal" )

