text = '私の誕生日は1977年7月17日です。'

# =~演算子などを使うと、マッチした結果をRegexp.last_matchえ取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得
puts Regexp.last_match

# マッチした部分全体を取得する
puts Regexp.last_match(0)

# 1〜3番目の内容を取得する
puts Regexp.last_match(1)
puts Regexp.last_match(2)
puts Regexp.last_match(3)

puts Regexp.last_match(-1)
