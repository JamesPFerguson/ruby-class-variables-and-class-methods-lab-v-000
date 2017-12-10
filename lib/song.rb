class Song

  @@songs = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artists, genre)
    @@artists << name
    @@songs += 1
    @@genres << genre

    if !(@@genre_count.has_key?(genre))
      @@genre_count[genre] = 0
    end

    @@genre_count[genre] += 1

  end

end
