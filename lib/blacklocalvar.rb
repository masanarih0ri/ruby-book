numbers = [1, 2, 3, 4]
sum = 0

# ブロックの外にあるsumとは別のsumをブロックないで定義
numbers.each do |n; sum|
  sum = 10
  sum += n
  puts sum
end

puts sum
