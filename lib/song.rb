require "pry"

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@artist_count = {}
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << self.genre #if !@@genres.include?(self.genre)
    @@artists << self.artist #if !@@artists.include?(self.artist)
    # @@genre_count[genre] ||= 0
    # @@genre_count[genre] += 1
    # @@artist_count[artist] ||= 0
    # @@artist_count[artist] += 1
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    #@@genres
    @@genres.uniq
  end

  def self.artists
    #@@artists
    @@artists.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
    end
    @@artist_count
  end

end

# rap_god = Song.new("Rap God", "Eminem", "rap")
# black_spiderman = Song.new("Black Spiderman", "Logic", "rap")
# hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
#
# Pry.start
