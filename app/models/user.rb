class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 2..15 }
  validates :password, presence: true, confirmation: true, length: { in: 8..32 }
  validates :email, presence: true, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
