class User < ApplicationRecord
  has_many :groups, through: :user_group

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
