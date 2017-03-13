class Recepient < ApplicationRecord
	belongs_to :user
	has_many :stories
	has_many :story_approvals

	belongs_to :category
	 # has_many :users

	 def has_filled_info?(user)
	 	
	 	
	 end
end
