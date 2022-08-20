class Post < ApplicationRecord
  belongs_to :user
# dependent destroy to delete the comments related to a post if that post is deleted.
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 1000}

end
