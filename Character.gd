extends Node2D

onready var role : Object = get_node("Role");
onready var stats : Object = get_node("CharacterStats");

func _ready():
	print(stats.get_stats())

	
