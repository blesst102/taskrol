class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :email, :password, :firstname, :lastname, :phone, :voternumber, :location, :skills)}

               devise_parameter_sanitizer.permit(:user_update) { |u| u.permit(:avatar, :password, :firstname, :lastname, :phone, :location, :skills, :current_password, :password_confirmation)}
          end

end
