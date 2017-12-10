class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)

    self.name = name
    self.artist = artist
    self.genre = genre

    @@artists << artist if !(@@artists.include?(artist))
    @@count += 1
    @@genres << genre if !(@@genres.include?(genre))

    if !(@@genre_count.has_key?(genre))
      @@genre_count[genre] = 0
    end

    @@genre_count[genre] += 1

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres
  end
  
  def self.artists
    @@artists
  end

  def self.genre_count
      @@genre_count
    end

    def artist_count
      @@artist_count
    end

    
  
end