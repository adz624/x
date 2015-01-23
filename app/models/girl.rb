class Girl < ActiveRecord::Base
  has_many :videos, through: :video_girlships
  has_many :video_girlships
end
