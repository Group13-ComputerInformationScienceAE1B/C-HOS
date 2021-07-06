class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commed_user_id
      t.integer :commed_post_id

      t.timestamps
    end
  end
end
