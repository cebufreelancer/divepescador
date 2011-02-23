class Photo < ActiveRecord::Base
  belongs_to :photographer

  has_attached_file :attach, :styles => { :big => "800x459", :thumb => "185x120>" }
end
