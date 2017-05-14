class Api::CarTypesController < ApplicationController
	def index
		@car_types = CarType.all
	end
end