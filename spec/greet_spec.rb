require 'greet'

RSpec.describe "personalised greeting method" do
  it "adds Hello to name to return Hello name" do
    result = greet("Lauren")
    expect(result).to eq "Hello, Lauren!"
  end
end