class Admin::ConfirmDriversController < ApplicationController
	include ApplicationHelper
	def index
		if current_user.is_franchise?
			@confirm_drivers = ConfirmDriver.where(area_id: current_user_area.id)
		else
			@confirm_drivers = ConfirmDriver.includes(:confirm_franchise).all
		end
	end

	def new
		@confirm_driver = ConfirmDriver.new
		@confirm_driver.build_driver_bank_detail
	end

	def create
		confirm_driver = ConfirmDriver.new(confirm_driver_params)
		if confirm_driver.save
			redirect_to admin_confirm_drivers_path
		else
			render :new
		end
	end

	def show
		@confirm_driver = ConfirmDriver.find(params[:id])
		unless confirm_driver.confirm_franchise == current_user
			redirect_to admin_confirm_drivers_path
		end
	end

	def edit
		@confirm_driver = ConfirmDriver.find(params[:id])
	end

	def update
		@confirm_driver = ConfirmDriver.find(params[:id])
		if @confirm_driver.update_attributes(confirm_driver_params)
			redirect_to admin_confirm_drivers_path
		else
			render :new
		end
	end

	private
	def confirm_driver_params
		params.require(:confirm_driver).permit(:confirm_franchise_id, :car_id, :car_model, :car_engine_number, :chassis_number, :varient, :color, :first_name, :middle_name, :last_name, :adhaar_number, :driving_licence_number, :badge_number, :address1, :address2, :area_id, :mobile_number, :city, :alternamte_number, :email, :pan_number, :photo_id_type, :photo_id_number, :address_proof_type, :address_proof_number, :shift, :is_schedule, :scheme, :car_plate_number, :birth_date, :insurance_policy_number, :insurance_expiry_date, :driver_bank_detail_attributes => [:bank_name, :branch_name, :account_number, :ifsc_code], :family_details_attributes => [:id, :_destroy, :name, :birth_date, :relation])
	end
	def format_dates
		params[:confirm_driver][:birth_date] = DateTime.strptime(params[:confirm_driver][:birth_date], "%m-%d-%Y") if params[:confirm_driver][:birth_date].present?
		params[:confirm_driver][:family_detail_attributes][:birth_date] = DateTime.strptime(params[:confirm_driver][:family_detail_attributes][:birth_date], "%m-%d-%Y") if params[:confirm_driver][:family_detail_attributes][:birth_date].present?
	end
end