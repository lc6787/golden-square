require 'report_length'

RSpec.describe "report length method" do
  it "returns string length within string" do
    result = report_length("my name is Lauren")
    expect(result).to eq "This string was 17 characters long."
  end
end

#   it "returns true if argument is a string" do
#     result = report_length(123)
#     expect(result).to eq nil
#   end
# write a test to make sure the input was a string and not an interger?