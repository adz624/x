class Video < ActiveRecord::Base
  self.per_page = 10
  has_many :tags, through: :video_tagships
  has_many :girls, through: :video_girlships
  has_many :video_girlships
  has_many :video_tagships
end
