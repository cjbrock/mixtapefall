class AddArtistIDtoSongs < ActiveRecord::Migration
  def change
    add_column :songs, :artist_id, :integer
    add_column :songs, :album_id, :integer 
  end
end
