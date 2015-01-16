class Devise::BaseController < ApplicationController
  layout :layout_by_resources


  protected

  def layout_by_resources
    if controller_name == 'sessions'
      false
    else
      'application'
    end
  end
end
