class VideosController < ApplicationController
  # GET /videos
  def index
    @videos = Video.all.page(params[:id])
  end
end