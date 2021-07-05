class RenamePostedCategoryIdColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :posted_category_id, :category_id
  end
end
