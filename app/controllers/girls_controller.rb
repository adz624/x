class GirlsController < ApplicationController
  before_action :set_girl, only: :show

  # GET /girls/:id
  def show
    @videos = @girl.videos.page(params[:page])
  end

  protected

  def set_girl
    @girl = Girl.find(params[:id])
  end
end