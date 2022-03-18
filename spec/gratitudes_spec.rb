require 'gratitudes'

RSpec.describe Gratitudes do
  # it "gratitude instance initially holds an empty array" do
  # gratitude = Gratitudes.new
  # expect(gratitude).to eq []
  # end

  it "adds multiple gratitudes to the gratitudes array and formats them" do
    gratitudes = Gratitudes.new
    gratitudes.add("Great pairing session yesterday")
    gratitudes.add("the sun shinning today")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: Great pairing session yesterday, the sun shinning today"
  end

  # it "formats with no gratitudes" do
  #   gratitudes = Gratitudes.new

  # end
end