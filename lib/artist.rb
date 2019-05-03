class Artist

  attr_accessor :name :song
  @@count=0
  
  def initialize(name)
    @name=name
    @song=[]
  end

  def add_song(song)
    @song<<song
    song.artist=self
    @@count+=1
  end

  def add_song_by_name(name)
    song=Song.new(name)
    @song<<song
    song.artist=self
    @@count+=1
  end

  def self.count
    @@count
  end
  
end