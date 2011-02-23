class IndexController < ApplicationController
  protect_from_forgery
   
  def index
    @photos = Photo.find(:all, :limit => 4, :order => "created_at DESC")
  end
end
