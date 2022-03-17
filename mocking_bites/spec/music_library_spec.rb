require 'music_library'

RSpec.describe MusicLibrary do

  it "constructs" do
    library = MusicLibrary.new

    expect(library.all).to eq []
  end

  context "adding tracks to library" do
    it "adds a track to library" do
      library = MusicLibrary.new
      track_1 = double :track
      track_2 = double :track
      library.add(track_1)
      library.add(track_2)
      
      expect(library.all).to eq [track_1, track_2]
    end
  end

  context "searching entries for keyword" do
    it "returns list of entries with matched keyword" do
      library = MusicLibrary.new
      track_1 = double :track, matches?: true
      track_2 = double :track, matches?: false
      track_3 = double :track, matches?: true
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)

      expect(library.search("keyword")).to eq [track_1, track_3]
    end

    it "yields error when no matches found" do
      library = MusicLibrary.new
      track_1 = double :track, matches?: false
      track_2 = double :track, matches?: false
      library.add(track_1)
      library.add(track_2)

      expect { library.search("keyword") }.to raise_error "No matching entries!"
    end
  end

end