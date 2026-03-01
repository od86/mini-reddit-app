class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { in: 5..20 }
  validates :body, length: { in: 20..200 }

  belongs_to :user
  has_many :comments
end
