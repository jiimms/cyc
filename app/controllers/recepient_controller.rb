class RecepientController < ApplicationController
	before_action :ensure_recepient!
  def dashboard
  end

  private
  def ensure_recepient!
  	unless current_user.user_type_id == 3
  		flash[:danger]= "You must be a registered recepient to view this page"
  		sign_out current_user
  		redirect_to login_path
  	end
  	
  end
end
