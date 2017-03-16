# == Schema Information
#
# Table name: stories
#
#  id           :integer          not null, primary key
#  recepient_id :integer
#  title        :string
#  body         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Story < ApplicationRecord
	validates :title, presence: true, length: {minimum: 3}
	validates :body, presence: true, length: {minimum: 70}

  belongs_to :recepient
end
