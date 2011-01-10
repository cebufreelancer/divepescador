class Photo < ActiveRecord::Base
  belongs_to :photographer

  has_attached_file :attach, :styles => { :thumb => "185x120>" }
end
