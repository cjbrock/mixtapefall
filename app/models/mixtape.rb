class Mixtape < ActiveRecord::Base
  attr_accessible :mixtape_name

  has_many :mixtape_songs
  has_many :songs, :through => :mixtape_songs
end
