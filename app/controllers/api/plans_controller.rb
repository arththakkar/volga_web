class Api::PlansController < ApiApplicationController
	def get_plan
		car_type = CarType.find(params[:car_type_id].to_i)
		model = params[:model].to_i if params[:model] != ""
		@plan = []
		if car_type.id == 1 
			if model >= 2015
				@plan << "Rs. 63,500 (15 Hours/Day for 30 Days)"
			end
			@plan << "Rs. 45,000 (12 Hours/Day, for 30 Days)"
			@plan << "Rs. 1,250 (15 Hours/Day, Fuel Extra)"
			@plan << "Rs. 1,000 (12 Hours/Day, Fuel Extra)"
		end

		if car_type.id == 2 
			@plan << "Rs. 40,000 (12 Hours/Day, for 30 Days)"
			@plan << "Rs. 1,000 (15 Hours/Day, Fuel Extra)"
			@plan << "Rs. 750 (12 Hours/Day, Fuel Extra)"
		end

		if car_type.id == 3
			@plan << "Rs. 35,000 (12 Hours/Day, for 30 Days)"
		end
	end
end