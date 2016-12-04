require 'pry'

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    # binding.pry
    song.artist = self
  end

  def song
    @songs
  end

  def genres
    @songs.collect { |song| song.genre }
  end
end
