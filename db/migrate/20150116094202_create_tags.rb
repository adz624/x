class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.integer :video_tagships_count, null: false, default: 0, unsigned: true
      t.timestamps
    end
  end
end
