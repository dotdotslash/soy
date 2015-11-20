class ChangeRef < ActiveRecord::Migration
  def change
    add_foreign_key :microposts, :users
  end
end
