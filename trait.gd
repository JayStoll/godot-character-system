class_name Trait extends Node

var trait_name : String

var description : String

var affects : Dictionary

func set_name(name : String) -> void:
	trait_name = name
	
func get_name() -> String:
	return trait_name
