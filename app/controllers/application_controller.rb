class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  
  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end
  
  
  protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :first_name, :last_name, :email, :password, :current_password, :location, :thumbnail, :gender, :is_female, :date_of_birth, :gen_pref, :age_min_pref, :age_max_pref, :local_pref) }
    end
    
end
