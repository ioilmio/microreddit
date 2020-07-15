class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 2..30 }
  validates :email, presence: true, uniqueness: true, length: { in: 4..50 }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, presence: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true

  has_many :posts
  has_many :comments
end
