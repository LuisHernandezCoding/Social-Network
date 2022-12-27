class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # permit: username, name, last_name, birth_date
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username name last_name birth_date])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username name last_name birth_date])
  end
end
