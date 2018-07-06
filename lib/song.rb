class Song

  attr_accessor :name, :genre, :artists
  
  @@artists = []
  @@song_count = 0
  @@genres = []
  @@genres_count={}
  @@artists_count={}

  def initialize(name, artist, genre)
    @@song_count +=1
    @@artists<<artist if !@@artists.include?(artist)
    @@genres<<genre if !@@genre.include?(genre)
    @@genres_count[genre] ||= +1
    @@artists_count[artist] ||= +1
  end

  def self.artists
    @@artists
  end

  def self.count
    @@song_count
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genre_count_hash={}
    
  end

  def self.artist_count
  end
  
end
