class Song

  attr_accessor :name, :genre, :artist

  @@artists = []
  @@count = 0
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists<<artist
    @@genres<<genre
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
    genre_count_hash = {}
    @@genres.uniq.each do |genre|
      genre_count_hash[genres]=@@genres.count(genre)
    end
    genre_count_hash
  end

  def self.artist_count
    @@artists_count
  end

end
