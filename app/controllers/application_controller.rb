class ApplicationController < ActionController::Base
#     before_action :configure_permitted_parameters, if: :devise_controller?

#     protected

#     def configure_permitted_parameters
#         devise_parameter_sanitizer.permit(:sign_in) do |user_params|
#           user_params.permit(:username, :password, :remember_me)
#     end
# end

    def index 
        @users = User.all
    end

    def destroy
        @user.destroy 
        redirect_to root_path
    end
end
