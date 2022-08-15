# frozen_string_literal: true

class AddPostCounterColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :posts_counter, :integer
  end
end
