# == Schema Information
#
# Table name: user_types
#
#  id         :integer          not null, primary key
#  user_role  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserType < ApplicationRecord
	has_many :users

end
