class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title, default: '', null: false
      t.string :cover
      t.string :preview
      t.string :url, default: '', null: false
      t.text :introduce
      t.boolean :is_download, default: false
      t.string :rtmp_host, default: '', null: false
      t.string :rtmp_path, default: '', null: false
      t.boolean :has_parsed
      t.boolean :has_video
      t.integer :views, default: 0, null: false, unsigned: true
      t.timestamps
    end
  end
end
