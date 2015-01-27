class Girl < ActiveRecord::Base
  has_many :videos, through: :video_girlships
  has_many :video_girlships

  scope :search_keyword, -> (keyword=nil, limit=10) {
    return none if keyword.nil? 
    where("title LIKE ?", "%#{keyword}%").limit(limit)
  }
end
