# adds post counter column to users
class AddPostCounterColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :posts_counter, :integer
  end
end
