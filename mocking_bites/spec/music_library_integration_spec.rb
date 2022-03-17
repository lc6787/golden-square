require 'music_library'
require 'track'

RSpec.describe "integration" do
  context "adding tracks to existing library" do
    it "adds a track instance to library" do
      library = MusicLibrary.new
      track_1 = Track.new("artist1", "song1")
      track_2 = Track.new("artist2", "song2")
      library.add(track_1)
      library.add(track_2)

      expect(library.all).to eq [track_1, track_2]
    end
  end

  context "searches library entries" do
    it "returns list of tracks with matched keyword" do
      library = MusicLibrary.new
      track_1 = Track.new("artist 1", "song 1")
      track_2 = Track.new("group 2", "song 2")
      track_3 = Track.new("artist 3", "song 3")
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)

      expect(library.search("artist")).to eq [track_1, track_3]
    end

    it "yields error if no matches" do
      library = MusicLibrary.new
      track_1 = Track.new("artist 1", "song 1")
      library.add(track_1)

      expect { library.search("group") }.to raise_error "No matching entries!"
    end
  end 
end