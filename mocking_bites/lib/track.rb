class Track
  def initialize(artist, song)
    @artist = artist
    @song = song
  end

  def artist
    return @artist
  end

  def song
    return @song
  end

  def matches?(keyword) 
    true if @artist.include?(keyword) || @song.include?(keyword)
  end
end