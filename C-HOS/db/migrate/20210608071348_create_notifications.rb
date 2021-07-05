class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.boolean :read
      t.integer :noti_com_id
      t.integer :noti_like_id
      t.integer :noti_follow_id

      t.timestamps
    end
  end
end
