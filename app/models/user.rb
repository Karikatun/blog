class User < ApplicationRecord
  before_save { email.downcase! }
  validates :nickname, :email, :password, presence: true
  validates :nickname, uniqueness: true, length: {maximum: 50}
  validates :email, length: {maximum: 255}, uniqueness: {case_sensitive: false}
  has_secure_password
end
