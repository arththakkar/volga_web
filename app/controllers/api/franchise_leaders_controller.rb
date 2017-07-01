class Api::FranchiseLeadersController < ApiApplicationController
	def create
		area = Area.find(params[:area_id])
		@franchise_leader = area.franchise_leaders.build(name: params[:name], birth_date: params[:birth_date], mobile_number: params[:mobile_number], exp_in_cab_business: params[:exp_in_cab_business], monthly_expectations: params[:monthly_expectations])
		if @franchise_leader.save
			render_json({:result=>{:messages =>"ok",:rstatus=>1, :errorcode =>""},:data=>{:messages =>"Registered Successfully!"}}.to_json)
		else
			render_json({:result=>{:messages =>"ok",:rstatus=>0, :errorcode =>"401"},:data=>{:messages =>"Something went wrong!"}}.to_json)
		end
	end

	private
	def format_dates
    params[:birth_date] = DateTime.strptime(params[:birth_date], "%m-%d-%Y") if params[:birth_date].present?
  end
end