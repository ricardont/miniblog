class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  has_many :posts
  before_create do  	
  	pot_name = self.email.split("@").first
  	#User.find
  	self.name ="@#{pot_name}"
  end
end
