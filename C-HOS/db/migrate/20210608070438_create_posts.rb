class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :overview
      t.string :img
      t.integer :posted_user_id
      t.integer :posted_category_id
      t.timestamps
    end
  end
end
