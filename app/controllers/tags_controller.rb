class TagsController < ApplicationController
  before_action :set_tag, only: :show

  # GET /tags
  def index
  end

  # GET /tags/:id
  def show
  end

  protected

  def set_tag
    @tag = Tag.find(params[:id])
  end
end