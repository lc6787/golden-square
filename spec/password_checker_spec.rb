require 'password_checker'

RSpec.describe PasswordChecker do
  it "passes password checker" do
    password = PasswordChecker.new
    expect(password.check("butterfly")).to eq true
  end
  it "fails password checker" do
    password = PasswordChecker.new
    expect { password.check("snail") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
