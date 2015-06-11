class User < ActiveRecord::Base

  has_secure_password

  validates_uniqueness_of :email
  validates :email, presence: true
  validates :password, presence: true
end
