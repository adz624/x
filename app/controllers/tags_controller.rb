class TagsController < ApplicationController
  before_action :set_tag, only: :show

  # GET /tags/:id
  def show
    @videos = @tag.videos.page(params[:page])
  end

  protected

  def set_tag
    @tag = Tag.find(params[:id])
  end
end