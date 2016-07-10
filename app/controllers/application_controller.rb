class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_sign_up_params, if: :devise_controller?
  before_action :set_categories
  before_action :authenticate_user!
  def set_categories
    @categories = Category.all
  end
  
  protected
    
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
    
    
end
