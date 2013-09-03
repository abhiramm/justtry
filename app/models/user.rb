class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,:invitable
  # :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :performer
<<<<<<< HEAD
  #attr_accessible :performer_attributes, :performer_id, :name
=======
  #attr_accessible :performer_attributes, :performer_id
>>>>>>> 17025447871fbdb96000ca44331aad686fc7b32c
  accepts_nested_attributes_for :performer
  
  
end
