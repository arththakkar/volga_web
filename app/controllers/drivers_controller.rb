class DriversController < ApplicationController
	include ApplicationHelper
	def index
		@drivers = Driver.where(area_id: params[:area])
	end

	def admin_index
		@drivers = Driver.all
		render :index
	end

	def export_driver
		@drivers = Driver.all
		respond_to do |format|
			format.html
			format.xls
		end
	end
end