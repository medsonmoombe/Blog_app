# rename user_id to author_id
class RenameRefComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :user_id, :author_id
  end
end
