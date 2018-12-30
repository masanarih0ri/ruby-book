dimensions = [
  # [たて,横]
  [10, 20],
  [30, 40],
  [50, 60]
]

# 面積の計算結果を格納する配列
areas = []
# # ブロック引数が1個であれば、ブロック引数の値が配列になる
# dimensions.each do |dimension|
#   length = dimension[0]
#   width = dimension[1]
#   areas << length * width
# end

# ブロック引数が2つのパターン
# dimensions.each do |length, width|
#   # 配列の要素分だけブロック引数を用意すると、各要素の値が別々の変数に格納される
#   areas << length * width
# end

# ブロック引数を2つ受け取るパターンの場合
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
# puts areas
