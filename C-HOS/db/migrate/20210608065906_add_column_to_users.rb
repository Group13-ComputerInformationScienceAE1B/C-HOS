class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :prof_img, :string
    add_column :users, :profile, :string
  end
end
