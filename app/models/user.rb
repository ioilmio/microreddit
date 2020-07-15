class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 2..30 }
  validates :email, presence: true, uniqueness: true, length: { in: 4..50 }
  validates :password, presence: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true

  has_many :post
  has_many :comment
end
