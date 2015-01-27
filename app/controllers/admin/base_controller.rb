class Admin::BaseController < ApplicationController
  before_action :require_admin!

  protected

  def require_admin!
    redirect_to root_url unless current_user.admin?
  end
end