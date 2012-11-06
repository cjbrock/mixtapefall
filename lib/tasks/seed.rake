desc "Create a bunch of seed data for artists and songs"
  task :seed_everything => [:environment, 'db:drop', 'db:create', 'db:migrate'] do

   # 7. 2 are shared.

    michael=Artist.create(artist_name: "Michael Jackson")
    michael.songs <<["Beat It", "Thriller", "Heal the World", "Rock With You", "Black or White"].collect do |song_name|
      Song.create :name => song_name
    end

    bruno=Artist.create(artist_name: "Bruno Mars")
    bruno.songs <<["Just the Way You Are", "Grenade", "Marry You"].collect do |song_name|
      Song.create :name => song_name
    end

    gwen=Artist.create(artist_name: "Gwen Stefani")
    gwen.songs <<["Hollaback Girl", "Harajuku Girls", "Long Way to Go"].collect do |song_name|
      Song.create :name => song_name
    end
    puts "Artists and Songs Created"

    best=Album.create(album_name: "Best of MJ")
    best.songs << michael.songs

    doowops=Album.create(album_name: "doo-wops and hooligans")
    doowops.songs << bruno.songs

    love=Album.create(album_name: "Love.Angel.Music.Baby")
    love.songs = gwen.songs
    puts "Albums Created"

    g=Genre.create(genre_name: "Pop")
    h=Genre.create(genre_name: "Rap")
    i=Genre.create(genre_name: "Hip-Hop")
    j=Genre.create(genre_name: "R&B")
    k=Genre.create(genre_name: "Dance")
    puts "Genres Created"

    corinna = User.create(user_name: "Corinna")
    favorites = Mixtape.create(mixtape_name: "Corinna's Favorites")
    corinna.mixtapes << favorites
    favorites.songs << bruno.songs

    party = Mixtape.create(mixtape_name: "Dance Party")
    corinna.mixtapes << party
    party.songs << love.songs

    sappy = Mixtape.create(mixtape_name: "Sappy Stuff")
    corinna.mixtapes << sappy
    favorites.songs << doowops.songs

    robert = User.create(user_name: "David")
    bad = Mixtape.create(mixtape_name: "David's Music Sucks")
    robert.mixtapes << bad
    puts "Users and Mixtapes created"

end