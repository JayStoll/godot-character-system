extends Node

class_name CharacterStats

const MAX_GENERATE_SIZE = 15

enum Stats {
	METALWORKING, 	# CRAFTSMAN
	BUILDING, 		# CRAFTSMAN
	CRAFTING, 		# CRAFTSMAN
	RANGED, 		# COMBAT
	MELEE,  		# COMBAT
}

const stat_map = {
	Stats.METALWORKING: ["craftsman", "blacksmith"],
	Stats.BUILDING: ["craftsman", "construction"],
	Stats.CRAFTING: ["craftsman", "artist"],
	Stats.RANGED: ["combat", "gunman"],
	Stats.MELEE: ["combat", "swordman"],
}

enum Proficency {
	NONE = 0,
	NOVICE = 5,
	ADEPT = 10,
	SKILLED = 15,
	LEGENDARY = 20
}

# This will be generated in the _init method to create an empty stats dictionary
var character_stats : Dictionary = {}
var display_idx : int

func _init() -> void:
	for value in Stats:
		randomize()
		character_stats[value] = randi() % MAX_GENERATE_SIZE

func generate_stats(role : Object) -> void:
	var roles_key_arr : Array = Array(role.get_my_roles().keys())
	var map_values : Array = stat_map.values()

	for i in len(map_values):
		if map_values[i][0] == roles_key_arr[0] && map_values[i][1] == roles_key_arr[1]:
			display_idx = i
			break
	
	character_stats[Stats.keys()[stat_map.keys()[display_idx]]] += Proficency.ADEPT

func get_stats() -> Dictionary:
	return character_stats

func get_display_role():
	return Stats.keys()[stat_map.keys()[display_idx]]
