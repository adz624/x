class Video < ActiveRecord::Base

  default_scope { order(id: :desc) }

  has_many :tags, through: :video_tagships
  has_many :girls, through: :video_girlships
  has_many :video_girlships
  has_many :video_tagships
end
