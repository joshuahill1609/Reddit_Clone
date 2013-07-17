class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :password, :password_confirmation, :session_token, :username

  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :subs
end
