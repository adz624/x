class Tag < ActiveRecord::Base
  has_many :video, through: :video_tagships
  has_many :video_tagships
end
