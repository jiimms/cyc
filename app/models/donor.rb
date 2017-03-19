# == Schema Information
#
# Table name: donors
#
#  id                :integer          not null, primary key
#  about_info        :string
#  home_address      :string
#  country_of_origin :string
#  reason_to_help    :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#

class Donor < ApplicationRecord
  has_many :donations
	belongs_to :user

	validates :home_address, presence: true
	validates :country_of_origin, presence: true
end
