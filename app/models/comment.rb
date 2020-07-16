class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 2..20 }

  belongs_to :post
  belongs_to :user
end
