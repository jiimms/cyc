class Follow < ApplicationRecord

validates :follower_id, uniqueness:{scope: :user_id}
belongs_to :user
belongs_to :follower, :class_name => 'User'


	def self.already_following?(user_id, follower_id)
		if Follow.where(user_id: user_id, follower_id: follower_id).any?
			return true
		end

		
	end
end
