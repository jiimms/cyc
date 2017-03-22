class Follow < ApplicationRecord

validates :follower_id, uniqueness:{scope: :user_id}
belongs_to :user
belongs_to :follower, :class_name => 'User'


	# def already_following?(user_id, follower_id)
	# 	if Follow.find(:follower, conditions: ["recepient_id = ? and user_id = ?", self.recepient_id, self.user_id]).any?
	# 		raise "Error"
	# 	end
		
	# end
end
