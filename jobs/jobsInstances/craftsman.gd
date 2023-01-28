##########################################
#		MAIN CLASS
##########################################
class Craftsman:
	extends "res://jobs/jobs_abstract.gd".Job
	func _init() -> void:
		self.name = "craftsman"
		self.add_sub_job('blacksmith', Blacksmith)
		self.add_sub_job('artist', Artist)
		self.add_sub_job('construction', Construction)

##########################################
#		SUB CLASS
##########################################
class Blacksmith extends Craftsman:
	func _init() -> void:
		self.name = "blacksmith"

class Artist extends Craftsman:
	func _init() -> void:
		self.name = "artist"

class Construction extends Craftsman:
	func _init() -> void:
		self.name = "construction"