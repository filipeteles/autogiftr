class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_one :user_account
         has_many :recipients
   
  after_create :create_user_account

  def create_user_account
  	self.user_account = UserAccount.new
  end
end
