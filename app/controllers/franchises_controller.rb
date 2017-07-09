class FranchisesController < ApplicationController
	def index
		@franchises = Franchise.all
		@areas = Area.all.order(:name)
	end

	def fetch_from_area
		area = Area.find(params[:id])
		puts "area===> #{area.inspect}===="
		@f = Franchise.where("area_id = ?",area.id)
		puts "franchises===> #{@f.inspect}===="
	end

	def export_franchise
		@franchises = Franchise.all
		puts @franchises.inspect
		respond_to do |format|
			format.html
			format.xls
		end
	end
end