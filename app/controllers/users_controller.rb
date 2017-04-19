class UsersController < ApplicationController
skip_before_filter :verify_authenticity_token, only: [:change_profile_picture]
before_filter :set_user, only: [:profile,:change_profile_picture, :following]

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
def stories_am_watching
  
  @following = current_user.follows
  
end

def following
  @following = current_user.follows
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

    # if @user.user_type_id == 1
    if @user.user_type_id == 2
      @donor = Donor.where(user_id: current_user.id)[0]

    elsif @user.user_type_id == 3
      @recepient = Recepient.where(user_id: current_user.id)[0]

    else
      puts "It's an admin or unsigned in user"

    end
      
      
  end
  def user_params
  	params.require(:user).permit(:avatar)
  end

end