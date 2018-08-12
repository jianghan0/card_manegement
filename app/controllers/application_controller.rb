class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # ゲストの場合、ログイン画面に飛ばす
  before_action :authenticate_user!
  # deviseの新規登録パラメータ許可
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
