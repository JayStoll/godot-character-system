##########################################
#		MAIN CLASS
##########################################
class Combat:
	extends "res://jobs/jobs_abstract.gd".Job
	func _init() -> void:
		self.name = "combat"
		self.add_sub_job('gunman', Gunman)
		self.add_sub_job('swordman', Swordman)

##########################################
#		SUB CLASS
##########################################
class Gunman extends Combat:
	func _init() -> void:
		self.name = "gunman"

class Swordman extends Combat:
	func _init() -> void:
		self.name = "swordman"
