text = '誕生日は1977年7月17日'

# puts text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')

# 名前付きキャプチャの場合
puts text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '\k<year>-\k<month>-\k<day>')
