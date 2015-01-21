class HomeController < ApplicationController

  # GET /videos
  def index
    @hotest_videos = Video.all.limit(4)
    @newest_videos = Video.all.limit(4)
  end
end