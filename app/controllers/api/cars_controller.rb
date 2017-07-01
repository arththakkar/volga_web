class Api::CarsController < ApiApplicationController
	def index
		car_type = CarType.find(params[:car_type_id])
		@cars = car_type.cars
	end
end