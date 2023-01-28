class Job:
	var sub_jobs : Dictionary = {}
	var name : String = ""

	func add_sub_job(job_name, sub_job) -> void:
		sub_jobs[job_name] = sub_job
	
	func get_sub_jobs() -> Dictionary:
		return sub_jobs
	
	func get_job_name() -> String:
		return name
