class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.integer :categorized_post_id
      t.integer :category_user_id

      t.timestamps
    end
  end
end
