class Api::CarTypesController < ApiApplicationController
	def index
		@car_types = CarType.all
	end
end