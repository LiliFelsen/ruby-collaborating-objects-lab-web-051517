require 'pry'

class Song

  attr_accessor :name, :artist, :filename

  def initialize(name)
    @name = name
    @artist
  end

  def self.new_by_filename filename
    filename_array = filename.split(" - ")
    artist = filename_array[0]
    song = filename_array[1]
    new_song = self.new(song)
    new_song.artist = artist
    new_song
  end

end
