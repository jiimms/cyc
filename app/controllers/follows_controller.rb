class FollowsController < ApplicationController



def follow
	@follow = Follow.create(user_id: current_user.id, follower_id: params[:recepient_id])
	if @follow.save
		# flash[:success] = "Successfully followed}"
		redirect_to :back
	else
		flash[:danger] = "You are already following this user"
		redirect_to :back

	end
end

def unfollow

	if params[:follow_id]
		@follow = Follow.find(params[:follow_id])
	else
		@follow = Follow.where(follower_id: params[:recepient_id].to_i, user_id: current_user.id).first
	end

		# @follow = Follow.find(params[:follow_id])
	if @follow.destroy
		# flash[:danger] = "Successfully unfollowed"
		redirect_to :back
	else
		# flash[:danger] = "You aren't following this user"
		redirect_to :back
	end
	
end

private
	def follow_params
		params.require(:follow).permit(:recepient_id, :user_id, :follow)	
	end
end