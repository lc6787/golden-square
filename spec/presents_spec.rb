require 'presents'

RSpec.describe Present do
  it "wraps and unwraps a present" do
    present = Present.new
    present.wrap("doll")
    expect(present.unwrap).to eq "doll"
  
end

  context "fails" do
    it "fails if contents already wrapped" do
      present = Present.new
      present.wrap("doll")
      expect { present.wrap("teddy") }.to raise_error "A contents has already been wrapped."
      expect(present.unwrap).to eq "doll"
    end

    it "fails if no contents have been wrapped" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end
