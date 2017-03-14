class Recepient < ApplicationRecord
	validates :about_info, presence: true, length: {minimum:50}
	validates :home_address, presence: true, length: {minimum:5}
	validates :country_of_origin, presence: true, length: {minimum:3}
	validates :reason_for_need, presence: true, length: {minimum:70}



	belongs_to :user
	has_many :stories
	has_many :story_approvals

	belongs_to :category
	 # has_many :users

	 def has_filled_info?(user)
	 	
	 	
	 end
end
