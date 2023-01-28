extends Node

class_name CharacterStats

const MAX_GENERATE_SIZE = 15

enum Stats {
	METALWORKING, 	# CRAFTSMAN
	FARMING, 		# FARMER
	BUILDING, 		# CRAFTSMAN
	CRAFTING, 		# CRAFTSMAN
	RANGED, 		# COMBAT
	MELEE,  		# COMBAT
}

const stat_map = {
	Stats.METALWORKING: "craftsman",
	Stats.FARMING : "farmer",
	Stats.BUILDING: "craftsman",
	Stats.CRAFTING: "craftsman",
	Stats.RANGED: "combat",
	Stats.MELEE: "combat",
}

# This will be generated in the _init method to create an empty stats dictionary
var character_stats : Dictionary = {}

func _init() -> void:
	for value in Stats:
		randomize()
		character_stats[value] = randi() % MAX_GENERATE_SIZE

func get_stats() -> Dictionary:
	return character_stats


func generate_stats(role) -> void:
	pass
	
