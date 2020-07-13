class Post < ApplicationRecord
  validates :title, presence: true,  length: { in: 2..50 }
  validates :body, presence: true,  length: { in: 2..5000 }

  belongs_to :user_id
  has_many :comments
end
