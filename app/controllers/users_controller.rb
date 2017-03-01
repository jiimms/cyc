class UserController < ApplicationController

def user_dashboard
	
end

def user_list

	@users = User.all
	
end


end