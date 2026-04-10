class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # ↑その戻り値がtrueであったときにのみ処理を実行する
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :occupation, :position, :profile])
  end
end
