class CreateVideoTagships < ActiveRecord::Migration
  def change
    create_table :video_tagships do |t|
      t.integer :video_id, default: 0, unsigned: true, null: false
      t.integer :tag_id, default: 0, unsigned: true, null: false
      t.timestamps
    end
  end
end
