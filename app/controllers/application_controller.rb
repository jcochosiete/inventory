# frozen_string_literal: true
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name lastname email password password_confirmation])
  end
  
   def after_sign_in_path_for (resource)
    dashboard_index_path
   end

end
