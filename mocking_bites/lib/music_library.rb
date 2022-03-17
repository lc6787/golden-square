class MusicLibrary
  def initialize
    @library = []
  end
  
  def add(track) 
    @library << track
  end
  
  def all
    return @library
  end
    
  def search(keyword)
    
    matching_tracks = []
    @library.each do |track|
        if track.matches?(keyword) == true
        matching_tracks << track
      end
    end
    fail "No matching entries!" if matching_tracks == []
    return matching_tracks
  end
end