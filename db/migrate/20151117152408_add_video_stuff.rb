class AddVideoStuff < ActiveRecord::Migration
  def change
    add_column :users, :video, :string
    add_column :users, :uname, :string
    
    add_column :users, :gen_pref, :string
    add_column :users, :age_min_pref, :integer
    add_column :users, :age_max_pref, :integer
    add_column :users, :local_pref, :string
  end
end