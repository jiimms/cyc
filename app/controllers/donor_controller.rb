class DonorController < ApplicationController

	before_action :ensure_donor!
  def dashboard
  end



  private
  def ensure_donor!
  	unless current_user.user_type_id == 2
  		sign_out current_user
  		redirect_to login_path
  	end
  	
  end
end
