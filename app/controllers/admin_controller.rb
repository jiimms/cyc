class AdminController < ApplicationController
before_action :ensure_admin!
before_action :set_user, only: [:block_user]

  def dashboard
  end

  def all_stories
    @stories = Story.all
    
  end

  def block_user
    if @user.update_attribute(:approval, params[:value])
      redirect_to :back
    else

    end
  end

  def all_users

  	@users = User.paginate(page: params[:page], per_page: 5)
  	
  end

  def all_recepients

    @recepients = Recepient.paginate(page: params[:page], per_page: 3)

    
  end
  def all_donors
    @donors = Donor.all
    
  end


  private
  def set_user
    @user = User.find(params[:id])
    
  end
  def user_params
    params.require(:user).permit(:approval)
    raise
    
  end
  def ensure_admin!
  	unless current_user.user_type_id == 1
  		flash[:danger] = "You must be Admin to view this page"
  		redirect_to root_path
  	end
  	
  end
end
