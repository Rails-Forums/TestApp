class CreatePosts < ActiveRecord::Migration[6.1]
  # This is how rails crates the database used to store all the info realted to what the table is called
  def change
    create_table :posts do |t|
      t.text :body
      t.string :username

      t.timestamps
    end
  end
end
