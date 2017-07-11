class Admin::ConfirmDriversController < ApplicationController
	def index
		@confirm_drivers = ConfirmDriver.all
	end

	def new
		@confirm_driver = ConfirmDriver.new
	end

	def create
		confirm_driver = ConfirmDriver.new(confirm_driver_params)
		if confirm_driver.save
		else
		end
	end

	private
	def confirm_driver_params
		params.require(:confirm_driver).permit(:car_id, :car_model, :car_engine_number, :chassis_number, :varient, :color, :first_name, :middle_name, :last_name, :adhaar_number, :driving_licence_number, :badge_number, :address1, :address2, :area_id, :mobile_number, :alternamte_number, :email, :pan_number, :photo_id_type, :photo_id_number, :address_proof_type, :address_proof_number, :shift, :is_schedule, :scheme, :family_detail_attributes => [:id, :_destroy, :name, :birth_date, :relation])
	end
end