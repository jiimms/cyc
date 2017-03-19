# == Schema Information
#
# Table name: donations
#
#  id           :integer          not null, primary key
#  donor_id     :integer
#  name         :string
#  amount       :string
#  recepient_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Donation < ApplicationRecord
	validates :name, presence: true
	validates :amount, presence: true
  belongs_to :donor
end
