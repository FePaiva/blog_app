class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
# for the rich text to be attached to the body. No need migration for it.
  has_rich_text :body
end
