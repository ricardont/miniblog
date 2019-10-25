class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, on: :create
  has_many :posts
  validates :bio, length: { maximum: 300 }
  validates :name, length: { maximum: 30 }
  before_create :set_user_name
  private 
  def set_user_name   	
  	pot_name = self.email.split("@").first
  	#User.find
  	self.name ="#{pot_name}"
  end
end
