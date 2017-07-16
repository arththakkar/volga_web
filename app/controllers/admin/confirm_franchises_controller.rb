class Admin::ConfirmFranchisesController < ApplicationController
	before_filter :formate_dates, only: [:create]
	def index
		if current_user.is_admin?
			@franchises = ConfirmFranchise.all
		else
			redirect_to admin_root_path
		end
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
		if current_user.is_admin?
			@confirm_franchise = ConfirmFranchise.find(params[:id])
		else
			redirect_to admin_root_path
		end
	end

	def edit
		if current_user.is_admin?
			@franchise = ConfirmFranchise.find(params[:id])
		else
			redirect_to admin_root_path
		end
	end

	def update
		@franchise = ConfirmFranchise.find(params[:id])
		if @franchise.update_attributes(candidate_params)
			@franchise.generate_franchise_code
			redirect_to admin_confirm_franchises_path, notice: "Franchise updated successfully."
		else
			render 'edit' , notice: "Error in update."
		end
	end

	def create_franchise_login
		franchise = ConfirmFranchise.find(params[:id])
		password = franchise.autogenerate_franchise_login(franchise)
		user = franchise.build_user(email: franchise.email_id, :password => password , :role_type => RoleType.find_by_name("Franchise"))
		if user.save
			redirect_to admin_confirm_franchises_path, notice: "Login is generated."
		else
			render :back , notice: "Something went wrong."
		end
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