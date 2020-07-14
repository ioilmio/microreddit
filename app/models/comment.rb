class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 2..20 }

  belongs_to :posts
  belongs_to :user_id
end
