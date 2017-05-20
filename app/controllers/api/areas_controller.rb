class Api::AreasController < ApplicationController
	def index
		@areas = Area.all.order(:name)
	end

	def get_allocated
		area = Area.find(params[:area_id])
		@type = params[:type]
		type_id = params[:type_id].to_i

		if @type == "FranchiseLeader"
			fla = FranchiseLeaderArea.where(area_id: area.id).first
			if fla.present?
				@franchise_leader = FranchiseLeader.find(fla.franchise_leader_id)
			end
		end

		if @type == "Franchise"
			fla = FranchiseArea.where(area_id: area.id).first
			if fla.present?
				@franchise = Franchise.find(fla.franchise_id)
			end
		end
	end
end