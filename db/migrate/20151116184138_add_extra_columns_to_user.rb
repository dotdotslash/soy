class AddExtraColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :thumbnail, :string
    add_column :users, :location, :string
    add_column :users, :gender, :string
  end
end
