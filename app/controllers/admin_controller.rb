class AdminController < ApplicationController
before_action :ensure_admin!
  def dashboard
  end

  def all_users

  	@users = User.all
  	
  end

  def all_recepients

    @recepients = Recepient.all

    
  end
  def all_donors
    @donors = Donor.all
    
  end


  private
  def ensure_admin!
  	unless current_user.user_type_id == 1
  		flash[:danger] = "You must be Admin to view this page"
  		redirect_to root_path
  	end
  	
  end
end
