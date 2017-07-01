class Admin::FranchisesController < ApplicationController
	before_filter :formate_dates, only: [:create]
	def index
		@franchises = ConfirmFranchise.all
	end

	def new
		@franchise = ConfirmFranchise.new
	end

	def create
		@franchise = ConfirmFranchise.new(candidate_params)
		if @franchise.save
			redirect_to admin_confirm_franchises_path, notice: "Franchise created successfully."
		else
			redirect_to new_admin_confirm_franchise_path, notice: "Something went wrong."
		end
	end

	def show
		@franchise = ConfirmFranchise.find(params[:id])
	end

	private
	def candidate_params
		params.require(:confirm_franchise).permit(:name, :address1, :address2, :city, :state, :country, :birthdate, :pan_no, :email_id, :adhaar_no, :nominee_name, :relation_with_nominee, :amount, :cheque_no, :cheque_date, :bank_name, :is_pan_card, :is_adhaar_card, :is_light_bill, :mobile_no)
	end

	def formate_dates
		params[:birthdate] = Date.strftime(params[:birthdate], "%Y-%m-%d") if params[:birthdate].present?
		params[:cheque_date] = Date.strftime(params[:cheque_date], "%Y-%m-%d") if params[:cheque_date].present?
	end
end