class FollowsController < ApplicationController



def follow
	@follow = Follow.create(user_id: current_user.id, follower_id: params[:recepient_id])
	if @follow.save
		flash[:success] = "Successfully following recep=> #{params[:recepient_id]} and follower_id=> #{current_user.id}"
		redirect_to :back
	else
		flash[:danger] = "You are already following this user"
		redirect_to :back

	end
end

def unfollow
		@follow = Follow.find(params[:follow_id])
	if @follow.destroy
		flash[:danger] = "Successfully unfollowed"
		redirect_to :back
	else
		flash[:danger] = "You aren't following this user"
		redirect_to :back
	end
	
end

private
	def follow_params
		params.require(:follow).permit(:recepient_id, :user_id, :follow)	
	end
end