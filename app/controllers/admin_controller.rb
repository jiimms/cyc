class AdminController < ApplicationController

  def dashboard
  end

  def all_users

  	@users = User.all
  	
  end
end
