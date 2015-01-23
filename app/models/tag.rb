class Tag < ActiveRecord::Base
  has_many :videos, through: :video_tagships
  has_many :video_tagships
end
