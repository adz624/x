class VideoGirlship < ActiveRecord::Base
  belongs_to :video
  belongs_to :girl
end
