# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string
#  last_name              :string
#  user_type_id           :integer
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  approval               :boolean          default("f"), not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { thumb: "100x100!", small: "200x200#", medium: "300x300#" }, default_url: "2.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  belongs_to :user_type
  has_many :recepients
  has_many :donors

  has_many :follows
  has_many :followers, through: :follows


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
