class DriversController < ApplicationController
	def index
		@drivers = Driver.all
	end

	def export_driver
		@drivers = Driver.all
		respond_to do |format|
			format.html
			format.xls
		end
	end
end