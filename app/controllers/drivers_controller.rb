class DriversController < ApplicationController
	def index
		date = Date.parse("2017/06/17")
		@drivers = Driver.where('created_at > ?', date.midnight)
	end
end