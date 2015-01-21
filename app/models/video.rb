class Video < ActiveRecord::Base
  has_many :tags, through: :video_tagships
  has_many :girls, through: :video_girlships
  has_many :video_girlships
  has_many :video_tagships

  scope :search_keyword, -> (keyword=nil) {
    if keyword.blank?
      none
    else
      where('title LIKE ?', "%#{keyword}%")
    end
  }
end