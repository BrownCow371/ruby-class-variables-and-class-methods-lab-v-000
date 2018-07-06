class Song

  attr_accessor :name, :genre, :artist

  @@artists = []
  @@count = 0
  @@genres = []
  @@genres_count={}
  @@artists_count={}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists<<artist
    @@genres<<genre
    @@genres_count[genre] ||= +1
    @@artists_count[artist] ||= +1
  end

  def self.artists
    @@artists.uniq
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres_count

  end

  def self.artist_count
    @@artists_count
  end

end
