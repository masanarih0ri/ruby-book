require 'date'

# 平成の日付文字列をDateオブジェクトに変換する
def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i
  # 正しい日付の時に限り、Dateオブジェクトを作成する
  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end

puts convert_heisei_to_date('平成30年12月31日')
puts convert_heisei_to_date('平成34年99月99日')
