class ApplicationController < ActionController::Base

    # private def current_user
    #     @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    # end
    # helper_method :current_user

    # devise機能（nameの追加）
    # before_action :configure_permitted_parameters, if: :devise_controller?

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # end
end
