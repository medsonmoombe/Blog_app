# like model class
class Like < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  # validations
  validates :author_id, presence: true
  validates :post_id, presence: true

  after_save :update_likes_counter

  def update_likes_counter
    post.increment!(:likes_counter)
  end
end
