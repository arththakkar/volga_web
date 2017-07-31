class Admin::FranchiseAreasController < ApplicationController
	def index
		@franchise_area = FranchiseArea.all
		@area = Area.all
		@franchise = Franchise.all
	end

	def create
		franchise_id = params[:franchise_id]
		area_id = params[:area_id]
		if FranchiseArea.create!(franchise_id: franchise_id,area_id: area_id)
			Franchise.find(franchise_id).update_attributes(:is_approved => true)
			redirect_to admin_franchise_areas_path , notice: "Recored save successfuly."
		else
			redirect_to admin_franchise_areas_path , notice: "Something went wrong."
		end
	end
end