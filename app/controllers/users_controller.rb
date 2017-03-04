class UsersController < ApplicationController

	def user_dashboard
		
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
				params.fetch(:user, {})

			end


end