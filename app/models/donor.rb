class Donor < ApplicationRecord
  has_many :donations
	belongs_to :user
end
