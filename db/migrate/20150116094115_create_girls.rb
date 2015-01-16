class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :title
      t.integer :video_girlships_count, null: false, default: 0, unsigned: true
      t.timestamps
    end
  end
end
