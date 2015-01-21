class Video < ActiveRecord::Base
  has_many :tags, through: :video_tagships
  has_many :girls, through: :video_girlships
  has_many :video_girlships
  has_many :video_tagships

  default_scope { order(id: :desc) }

  scope :search_keyword, -> (keyword=nil) {
    if keyword.blank?
      none
    else
      where('title LIKE ?', "%#{keyword}%")
    end
  }
end