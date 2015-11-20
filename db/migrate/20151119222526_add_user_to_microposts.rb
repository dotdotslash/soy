class AddUserToMicroposts < ActiveRecord::Migration
  def change
      remove_column :microposts, :user_id
    end
end
