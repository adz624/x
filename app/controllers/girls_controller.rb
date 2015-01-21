class GirlsController < ApplicationController
  before_action :set_girl, only: :show

  # GET /girls
  def index
  end

  # GET /girls/:id
  def show
  end

  protected

  def set_girl
    @girl = Tag.find(params[:id])
  end
end