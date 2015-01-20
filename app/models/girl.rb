class Girl < ActiveRecord::Base
  has_many :video, through: :video_girlships
  has_many :video_girlships
end
