require 'date'

# 平成の日付文字列をDateオブジェクトに変換する
def convert_heisei_to_date(heisei_text)
  m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 1988
  month = m[:month].to_i
  day = m[:day].to_i
  # 例外処理の範囲を決め、補足する例外クラスを確定する
  begin
    Date.new(year, month, day)
  rescue ArgumentError
    # 無効な日付であればnilを返す
    "nil"
  end
end

puts convert_heisei_to_date('平成30年12月31日')
puts convert_heisei_to_date('平成34年99月99日')
