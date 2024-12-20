#frozen_string_literal:true

require "zodiac/version"

class Time
  ZODIAC_SIGNS = [
    {start_day: [1, 20], sign: "aquarius"},
    {start_day: [2, 19], sign: "pisces"},
    {start_day: [3, 21], sign: "aries" },
    {start_day: [4, 20], sign: "taurus"},
    {start_day: [5, 21], sign: "gemini"},
    {start_day: [6, 21], sign: "cancer"},
    {start_day: [7, 23], sign: "leo"},
    {start_day: [8, 23], sign: "virgo"},
    {start_day: [9, 23], sign: "libra"},
    {start_day: [10, 23], sign: "scorpio"},
    {start_day: [11, 22], sign: "sagittarius"},
    {start_day: [12, 22], sign: "capricorn"}
  ]

  def zodiac_sign
    date = self
    month = date.month
    day = date.day

    sign_data = ZODIAC_SIGNS.find do |z|
      z[:start_day][0] == month ? day >= z[:start_day][1] : z[:start_day][0] == (month % 12) + 1
    end
    sign_data[:sign]
  end
end

module Zodiac
  class Error < StandardError; end
  # Your code goes here...
end
