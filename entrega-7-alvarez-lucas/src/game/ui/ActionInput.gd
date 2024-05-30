tool
extends Node

onready var input : Label = $"%Input"
onready var action : Label = $"%Action"

export (String) var action_input:String setget _set_action_input
export (String) var action_name:String setget _set_action_name

func _ready():
	input.text=action_input
	action.text=action_name

func _set_action_input(inp: String):
	action_input= inp
	if Engine.editor_hint && has_node("%Input"):
		$"%Input".text=inp
		

func _set_action_name(name: String):
	action_name= name
	if Engine.editor_hint && has_node("%Input"):
		$"%Action".text=name
