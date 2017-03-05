class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protected

  before_action :authenticate_user!	

  # protected

  # def authenticate_user!
  # 	if current_user && current_user.UserType_id == 1 
  # 		redirect_to admin_dashboard_path


  # 	end
  # 	 if current_user && current_user.UserType_id == 2
  # 		redirect_to admin_dashboard_path


  # 	end

  # 	 if current_user && current_user.UserType_id == 3
  # 		redirect_to admin_dashboard_path


  # 	end

  # 	  	if current_user && current_user.UserType_id == 1 
  # 		redirect_to admin_dashboard_path


  # 	end
  # end
end
