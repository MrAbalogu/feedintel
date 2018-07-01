class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname, :role, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :role, :photo])
    
  end

	def layout_by_resource
	    if devise_controller? 
	      "auth"
	    end
	end

end
