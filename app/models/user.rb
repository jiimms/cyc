class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :user_type
  has_many :recepients
  has_many :donors


def full_name
	return "#{first_name} #{last_name}".strip if(first_name || last_name)
	"Anonymus"
end

	def is_admin?(user)
		if user.user_type_id == 1
		return true
		end 
		
	end
	def is_donor?(user)
		if user.user_type_id == 2
		return true
		end 
		
	end
	def is_recepient?(user)
		if user.user_type_id == 3
		return true
		end 
		
	end
end
