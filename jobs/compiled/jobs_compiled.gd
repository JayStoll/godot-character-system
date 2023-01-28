class JobsAbstract:
	var craftsman = load("res://jobs/jobsInstances/craftsman.gd")
	var combat = load("res://jobs/jobsInstances/combat.gd")

	func get_compiled() -> Array:
		return [ 
			{
				"name": craftsman.Craftsman,
				"sub": set_sub_compiled(craftsman.Craftsman)
			},
			{
				"name": combat.Combat,
				"sub": set_sub_compiled(combat.Combat)
			}
		]
	
	func set_sub_compiled(base_class) -> Array:
		var data: Array = []

		for i in Array(base_class.new().get_sub_jobs().values()):
			data.push_back(
				{
					"name": i, 
					"meta": {
						"name": i.new().get_job_name()
					}
				}
			)

		return data
