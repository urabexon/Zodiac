#frozen_string_literal:true

require "zodiac/version"

# ZODIAC_SIGNS: 星座データ
# start_day: [月, 日] 星座の開始日
# sign: 英語名
# name: 日本語名
# emoji: 絵文字表現

class Time
  ZODIAC_SIGNS = [
    {start_day: [1, 20], sign: "aquarius", name: "水瓶座", emoji: "♒️"},
    {start_day: [2, 19], sign: "pisces", name: "魚座", emoji: "♓"},
    {start_day: [3, 21], sign: "aries", name: "牡羊座", emoji: "♈"},
    {start_day: [4, 20], sign: "taurus", name: "牡牛座", emoji: "♉"},
    {start_day: [5, 21], sign: "gemini", name: "双子座", emoji: "♊"},
    {start_day: [6, 21], sign: "cancer", name: "蟹座", emoji: "♋"},
    {start_day: [7, 23], sign: "leo", name: "獅子座", emoji: "♌"},
    {start_day: [8, 23], sign: "virgo", name: "乙女座", emoji: "♍"},
    {start_day: [9, 23], sign: "libra", name: "天秤座", emoji: "♎"},
    {start_day: [10, 23], sign: "scorpio", name: "蠍座", emoji: "♏"},
    {start_day: [11, 22], sign: "sagittarius", name: "射手座", emoji: "♐"},
    {start_day: [12, 22], sign: "capricorn", name: "山羊座", emoji: "♑️"}
  ]

  def zodiac_sign
    find_zodiac[:sign]
  end

  def zodiac
    find_zodiac[:name]
  end

  def zodiac_sign_emoji
    find_zodiac[:emoji]
  end

  private

  def find_zodiac
    month = self.month
    day = self.day

    ZODIAC_SIGNS.find do |z|
      current_month = z[:start_day][0] == month && day >= z[:start_day][1]
      next_month = z[:start_day][0] == (month % 12) + 1
      current_month || next_month
    end || { sign: "unknown", name: "不明", emoji: "❓" }
  end
end
