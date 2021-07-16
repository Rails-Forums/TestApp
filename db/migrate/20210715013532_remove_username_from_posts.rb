class RemoveUsernameFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :username
    add_reference :posts, :user, foreign_key: true
  end
end
