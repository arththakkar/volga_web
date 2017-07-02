class Users::SessionsController < Devise::SessionsController
  layout 'login'
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    user = User.find_by_email(params[:user][:email])

    if user.present? and user.valid_password?(params[:user][:password])
      if user.role_type.name == "Admin"
        sign_in(user,:bypass=>true)
        logger.warn("success Super admin")
        redirect_to admin_confirm_franchises_path,:notice => "Welcome !!!!!!!"
      elsif user.role_type.name == "Franchise"
        sign_in(user,:bypass=>true)
        redirect_to admin_confirm_franchises_path,:notice => "Welcome !!!!!"
        logger.warn("success BusinessUser")
      
      end
    else
      logger.warn("invalid username and password")
      flash[:error] = "Invalid Email or Password"
      redirect_to :back
     end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
