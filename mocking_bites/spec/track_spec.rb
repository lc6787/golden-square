require 'track'

RSpec.describe Track do
  context "initial returns" do
    it "returns artist when asked" do
      track_1 = Track.new("artist 1", "song 1")
  
      expect(track_1.artist).to eq "artist 1"
    end

    it "returns song when asked" do
      track_1 = Track.new("artist 1", "song 1")
  
      expect(track_1.song).to eq "song 1"
    end
  end
    
  context "when track instances exist" do
    it "finds match when searching entry for keyword" do
      track_1 = Track.new("artist 1", "song 1")
      track_2 = Track.new("artist 2", "song about 2")

      expect(track_2.matches?("about")).to eq true
    end

    it "doesn't match anything to keyword search" do
      track_1 = Track.new("artist 1", "song 1")
      track_2 = Track.new("artist 2", "song 2")

      expect(track_1.matches?("singer")).to eq nil
    end
  end
end