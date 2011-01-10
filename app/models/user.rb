class User < ActiveRecord::Base
  
  class << self
    def authenticate(params)
      username = params[:username]
      password = encrypt_password(params[:password])
      user = User.find(:first, :conditions => ["username = ? AND password = ?", username, password])
    end
  end
  
  def self.encrypt_password(password)
    Digest::SHA1.hexdigest(password)
  end
  
end
