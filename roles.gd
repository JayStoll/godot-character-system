extends Node

var jobs_classes = load("res://jobs/compiled/jobs_compiled.gd").JobsAbstract.new()

##########################################
#		MAIN COMPONENT
##########################################
class_name Role

var my_role: Dictionary = {}

func _init() -> void:
	randomize()
	var jobs = jobs_classes.get_compiled()
	
	var job_idx = randi() % jobs.size()
	var sub_job_idx = randi() % jobs[job_idx].sub.size()

	print(job_idx, sub_job_idx)

	var job_at_idx = jobs[job_idx]
	var sub_at_idx = jobs[job_idx].sub[sub_job_idx]

	var job = job_at_idx.name.new()
	var sub = sub_at_idx.name.new()

	my_role[job.get_job_name()] = job
	my_role[sub.get_job_name()] = sub

	print(my_role)
	
