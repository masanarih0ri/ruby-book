text = '私の誕生日は1977年7月17日です。'

# キャプチャを利用

# m = /(\d+)年(\d+)月(\d+)日/.match(text)
#
# puts m[0]
# puts m[1]
# puts m[2]
# puts m[3]
# puts m[2, 2]
# puts m [-1]
# puts m[1..3]
# puts m[1...3]

# キャプチャの結果に名前をつける
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

puts m[:year]
puts m[:month]
puts m[:day]

puts m['year']
puts m[1]
