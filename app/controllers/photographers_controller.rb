class PhotographersController < ApplicationController
  layout 'admin'
  protect_from_forgery
  
  before_filter :get_photographers, :only => [:new]

  def index
    @photographers = Photographer.find(:all, :order => "created_at DESC")
  end
  
  def delete
    photographer = Photographer.find(params[:id])
    photographer.destroy
    redirect_to photographers_path
  end
  
  
  def create
    photographer = Photographer.new(params[:photographer])
    photographer.save!
    redirect_to photographers_path
  end

  def get_photographers
    @photographers = []
    p = Photographer.find(:all)
    p.each do |pg|
      @photographers << [pg.fullname, pg.id]
    end
      
  end
end
