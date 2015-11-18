class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string  :video
      t.text    :meta_info

      t.timestamps
    end
  end
end
