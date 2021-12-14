class ApplicationController < ActionController::Base
    #before_action :authenticate_user!
    protect_from_forgery with: :exception
    
    include Pundit
    protect_from_forgery
    
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    
     
     before_action :configure_permitted_parameters, if: :devise_controller?
     

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :email, :password, :firstname, :lastname, :phone, :voternumber, :location, :skills, skill_ids: [])}
               
               devise_parameter_sanitizer.permit(:user_update) { |u| u.permit(:avatar, :firstname, :lastname, :phone, :location, :skills, skill_ids: [])}
          end

     private

     def user_not_authorized(exception)
          policy_name = exception.policy.class.to_s.underscore
     
          flash[:error] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
          redirect_to(request.referrer || root_path)
     end

end
