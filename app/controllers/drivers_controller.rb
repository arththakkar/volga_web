class DriversController < ApplicationController
	include ApplicationHelper
	def index
		unless current_user.is_latest?
			@drivers = Driver.where(area_id: current_user_area.id)
		else
			@drivers = Driver.where(area_id: current_user.confirm_franchise.areas.pluck(:id))
		end
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