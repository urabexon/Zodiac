require_relative "../lib/zodiac"

RSpec.describe Time do
  it "returns the correct zodiac signs" do
    expect(Time.new(2023, 1, 19).zodiac_sign).to eq("capricorn")
    expect(Time.new(2023, 7, 23).zodiac_sign).to eq("leo")
    expect(Time.new(2023, 12, 22).zodiac_sign).to eq("capricorn")
  end
end