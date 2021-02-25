class User < ApplicationRecord
  has_secure_password
  has_one :profile_attr

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :username, presence: true
end
