class PhotosController < ApplicationController
  layout 'admin'
  protect_from_forgery
  
  before_filter :get_photographers, :only => [:new]

  def index
    @photos = Photo.find(:all, :order => "created_at DESC")
  end
  
  def delete
    photo = Photo.find(params[:id])
    photo.destroy
    redirect_to photos_path
  end
  
  
  def create
    puts params.inspect
    photo = Photo.new(params[:photo])
    photo.save!
    redirect_to photos_path
  end

  def get_photographers
    @photographers = []
    p = Photographer.find(:all)
    p.each do |pg|
      @photographers << [pg.fullname, pg.id]
    end
      
  end
end
