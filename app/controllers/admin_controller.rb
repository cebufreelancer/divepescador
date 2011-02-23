class AdminController < ApplicationController
  layout 'admin'
  protect_from_forgery
  
  def login
    user = User.authenticate(params)
    if user
      session[:user] = user.id
      redirect_to photos_path
    else
      flash[:error] =  "Incorrect username and password."
      redirect_to admin_index_path
    end
  end
end
