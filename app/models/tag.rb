class Tag < ActiveRecord::Base
  has_many :videos, through: :video_tagships
  has_many :video_tagships

  scope :search_keyword, -> (keyword=nil, limit=10) {
    return none if keyword.nil? 
    where("title LIKE ?", "%#{keyword}%").limit(limit)
  }
end
