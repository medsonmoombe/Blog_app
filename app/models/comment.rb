# comment class
class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  # validations
  validates :author_id, presence: true
  validates :post_id, presence: true
  validates :text, presence: true

  after_save :updates_comments_counter
  def updates_comments_counter
    post.increment!(:comments_counter)
  end
end
