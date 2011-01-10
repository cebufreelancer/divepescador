class Photographer < ActiveRecord::Base
  has_many :photos
  
  def fullname
    "#{self.firstname} #{self.lastname}"
  end

end
