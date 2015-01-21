class VideosController < ApplicationController
  before_action :set_video, only: :show

  # GET /videos
  def index
    @videos = Video.all.includes(:girls, :tags).page(params[:page])
  end

  # GET /videos/search
  def search
    @q = (params[:search] || {})[:q]
    @videos = Video.search_keyword(@q).includes(:girls, :tags).page(params[:page])
    render :index
  end

  # GET /videos/:id
  def show
    @tags = @video.tags
    @girls = @video.girls
  end

  protected

  def set_video
    @video = Video.find(params[:id])
  end
end
