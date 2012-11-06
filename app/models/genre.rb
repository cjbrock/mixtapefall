class Genre < ActiveRecord::Base
  attr_accessible :genre_name

  has_many :song_genres
  has_many :songs, :through => :song_genres
end
