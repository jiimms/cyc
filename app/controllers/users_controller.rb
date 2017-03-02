class UserController < ApplicationController

def user_dashboard
	
end

def user_list

	@users = User.all
	
end

def user_profile
	@user = User.find(:user)
	
end


private

def set_user
	@user = User.find(params[:id])

	
end

def user_params
	params.fetch(:user, {})

	end


end