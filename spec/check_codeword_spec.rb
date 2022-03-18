require 'check_codeword'

RSpec.describe "check codeword method" do
  it "checks if code word input is horse" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end
  it "checks if code word input is close to horse" do
    result = check_codeword("house")
    expect(result).to eq "Close, but nope."
  end
  it "checks if code word input is incorrect" do
    result = check_codeword("hippo")
    expect(result).to eq "WRONG!"
  end
end
