require 'pry'
# All of the commented out code is what you are taking away
# by utitlizing module framework into your code
class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  @@artists = []

  def initialize
  # Becomes a class method rather than writing it out as
  # @@artists << self. self.class reads the class you
  # are currently in. However, initialize is an instance
  # method, since you are working on instances within the class
    # self.class.all << self
    # super yields to the parent first, then you can add
    # additional functionality to it.
    super
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end


  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
