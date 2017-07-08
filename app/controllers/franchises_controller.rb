class FranchisesController < ApplicationController
	def index
		@franchises = Franchise.all
		@areas = Area.all.order(:name)
	end

	def fetch_from_area
		area = Area.find(params[:id])
		puts area.inspect
	end

	def export_franchise
		@franchises = Franchise.all
		respond_to do |format|
			format.html
			format.xls
		end
	end
end