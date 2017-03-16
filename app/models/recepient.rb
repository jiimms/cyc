# == Schema Information
#
# Table name: recepients
#
#  id                :integer          not null, primary key
#  about_info        :string
#  home_address      :string
#  country_of_origin :string
#  reason_for_need   :string
#  need_amount       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#  category_id       :integer
#

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
