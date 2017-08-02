class Api::ConfirmDriversController < ApiApplicationController
	def index
		@confirm_drivers = ConfirmDriver.all
	end
end