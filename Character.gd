extends Node2D

onready var role : Object = get_node("Role");
onready var stats : Object = get_node("CharacterStats");

func _ready():
	stats.generate_stats(role)

	print(stats.get_display_role())
	print(stats.get_stats())

	
