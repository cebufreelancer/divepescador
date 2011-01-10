class ViewersController < ApplicationController
  protect_from_forgery

  def viewer
    @photo = Photo.find(params[:id]) rescue nil
  end
end
