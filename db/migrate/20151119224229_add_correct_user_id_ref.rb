class AddCorrectUserIdRef < ActiveRecord::Migration
  def change
    add_reference :microposts, :user, index: true
    add_foreign_key :microposts, :user
  end
end
