class DeleteUserIdId < ActiveRecord::Migration
  def change
    remove_column :microposts, :user_id_id    
  end
end
