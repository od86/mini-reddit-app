class Comment < ApplicationRecord
  validates :body, presence: true
  validates :body, length: { in: 10..50 }

  belongs_to :user
  belongs_to :post
end
