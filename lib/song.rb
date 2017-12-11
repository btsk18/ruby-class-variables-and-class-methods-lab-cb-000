class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initializer(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.unique
  end

  def self.artists
    @@artists.unique
  end

  def self.genre_count
    genre.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }
  end
end
