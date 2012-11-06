class Artist < ActiveRecord::Base
  attr_accessible :artist_name

  has_many :songs
end
