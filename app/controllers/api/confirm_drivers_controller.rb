class Api::ConfirmDriversController < ApiApplicationController
	def index
		puts "=-==s==========="
		@confirm_drivers = ConfirmDriver.all
	end

	def show
		@confirm_driver = ConfirmDriver.find(params[:id])
	end
end