class ApiIndexRenderer
	attr_reader :name, :link_ref, :method_type

	def initialize(name, link_ref, method_type)
		@name        = name
		@link_ref    = link_ref
		@method_type = method_type
	end

	class << self
		def user_api_index
			index_arr = []
			index_arr << ApiIndexRenderer.new("Area List", "area", "GET")
			index_arr << ApiIndexRenderer.new("Create Franchise Leader", "create_franchise_leader", "POST")
			index_arr << ApiIndexRenderer.new("Create Franchise", "create_franchise", "POST")
			index_arr << ApiIndexRenderer.new("Create Driver", "create_driver", "POST")
			index_arr << ApiIndexRenderer.new("Car Type List", "car_type_list", "GET")
			index_arr << ApiIndexRenderer.new("Car List", "car_list", "GET")
			index_arr << ApiIndexRenderer.new("Plan List", "plan_list", "GET")
			index_arr << ApiIndexRenderer.new("Allocated Area", "allocated_area", "GET")
		end
	end
end