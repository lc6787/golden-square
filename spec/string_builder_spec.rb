require 'string_builder'

RSpec.describe "initially returns empty string" do
  it "intitally returns an empty string" do
    my_string = StringBuilder.new
    expect(my_string.output).to eq ""
  end

  it "initially returns length of 0" do
    my_string = StringBuilder.new
    expect(my_string.size).to eq 0
  end

  it "returns string length from multiple inputs" do
    my_string = StringBuilder.new
    my_string.add("Hello my name is ")
    my_string.add("Lauren")
    expect(my_string.size).to eq 23
  end

  it "returns string output from multiple inputs" do
    my_string = StringBuilder.new
    my_string.add("Hello my name is ")
    my_string.add("Lauren")
    expect(my_string.output).to eq "Hello my name is Lauren"
  end
end