class CreateVideoGirlships < ActiveRecord::Migration
  def change
    create_table :video_girlships do |t|
      t.integer :video_id, default: 0, unsigned: true, null: false
      t.integer :girl_id, default: 0, unsigned: true, null: false
      t.timestamps
    end
  end
end