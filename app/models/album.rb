class Album < ActiveRecord::Base
  attr_accessible :album_name
  
  has_many :songs

end
