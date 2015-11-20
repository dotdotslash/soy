class AddReferenceToMicro < ActiveRecord::Migration
  def change
    add_reference :microposts, :user_id, index: true
    add_foreign_key :microposts, :user_id
  end
end
