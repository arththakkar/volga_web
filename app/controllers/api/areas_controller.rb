class Api::AreasController < ApiApplicationController
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
			else
				render_json({:result=>{:messages =>"ok",:rstatus=>0, :errorcode =>""},:data=>{:messages =>"Not Allocated"}}.to_json)
			end
		end

		if @type == "Franchise"
			logger.warn "============IN"
			fla = FranchiseArea.where(area_id: area.id).first
			if fla.present?
				@franchise = Franchise.find(fla.franchise_id)
				logger.warn "====#{@franchise.inspect}"
			else
				render_json({:result=>{:messages =>"ok",:rstatus=>0, :errorcode =>""},:data=>{:messages =>"Not Allocated"}}.to_json)
			end
		end
	end
end