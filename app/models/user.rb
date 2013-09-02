class User < ActiveRecord::Base
  attr_accessible :crypted_password, :login, :password_salt, :persistence_token, :password, :password_confirmation, :email, :mobile_number, :registration_number
  
  acts_as_authentic
  
  validates :mobile_number, presence: true
  validates :registration_number, presence: true
end
