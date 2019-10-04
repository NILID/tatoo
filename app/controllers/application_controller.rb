class ApplicationController < ActionController::Base
  before_action :authenticate_user

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_user
    redirect_to new_user_registration_path unless user_signed_in?
  end

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
