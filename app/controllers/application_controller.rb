class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  allow_browser versions: :modern

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[login_key name])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[login_key])
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name email address telephone_number allergy_note delivery_cycle plan_id
                                               password password_confirmation current_password])
  end
end
