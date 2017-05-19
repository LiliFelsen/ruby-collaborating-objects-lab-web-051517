require 'pry'

class Song

  attr_accessor :name, :artist, :filename

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename filename
    filename_array = filename.split(" - ")
    artist = filename_array[0]
    song = filename_array[1]
    new_song = self.new(song)
    artist = Artist.find_or_create_by_name artist
    new_song.artist = artist
    artist.add_song new_song
    new_song
  end

end
