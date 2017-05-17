class Api::DriversController < ApplicationController
	def create
		area = Area.find(params[:area_id])
		@driver = area.drivers.build(name: params[:name], mobile_number: params[:mobile_number], car_plate_number: params[:car_plate_number], in_cab_business_from: params[:in_cab_business_from], plan: params[:plan], emi: params[:emi], emi_date_dd: params[:emi_date].to_i, car_id: params[:car_id], model: params[:model])
		if @driver.save
			render_json({:result=>{:messages =>"ok",:rstatus=>1, :errorcode =>""},:data=>{:messages =>"Registered Successfully!"}}.to_json)
		else
			render_json({:result=>{:messages =>"ok",:rstatus=>0, :errorcode =>"401"},:data=>{:messages =>"Something went wrong!"}}.to_json)
		end
	end

	private
	def format_dates
    params[:emi_date] = DateTime.strptime(params[:emi_date], "%m-%d-%Y") if params[:emi_date].present?
  end
end