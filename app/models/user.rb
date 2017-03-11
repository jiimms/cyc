class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { thumb: "100x100!", small: "200x200#", medium: "300x300#" }, default_url: "2.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  belongs_to :user_type
  belongs_to :category
  has_many :recepients
  has_many :donors


def full_name
	return "#{first_name} #{last_name}".strip if(first_name || last_name)
	"Anonymus"
end
	def get_user_info(user)
		if user.user_type_id == 3
			# belongs_to :recepient
			r = Recepient.where(user_id: user.id)
			return r
		end 	
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
