class DriversController < ApplicationController
	include ApplicationHelper
	def index
		puts "====#{params[:area]}====#{is_franchise_area?(params[:area])}==="
		if params[:area] != "all" and is_franchise_area?(params[:area]) 
			if params[:area].present?
				@drivers = params[:area] == "all" ? Driver.all : Driver.where(area_id: params[:area])
			else
				@drivers = Driver.all
			end
		else
			redirect_to drivers_path(area: current_user_area.id)
		end
	end

	def export_driver
		@drivers = Driver.all
		respond_to do |format|
			format.html
			format.xls
		end
	end
end