class UsersController < ApplicationController
skip_before_filter :verify_authenticity_token, only: [:change_profile_picture]
before_filter :set_user, only: [:profile,:change_profile_picture]

def user_dashboard
  
end

def profile


end
def change_profile_picture

	if @user.update_attribute(:avatar, params[:avatar])
		flash[:success] = "Profile picture changed"
		redirect_to :back
	else

	end
	
end

def user_list
  @users = User.all
end

def show
  @user = User.find(params[:id])
end

private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
  	params.require(:user).permit(:avatar)
  end

end