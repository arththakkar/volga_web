class DriversController < ApplicationController
	def index
		@drivers = Driver.where('created_at > ?', date.midnight)
	end
end