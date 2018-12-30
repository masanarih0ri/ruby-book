# def to_hex(r,g,b)
#   hex = '#'
#   array = [r,g,b]
#   # arrayの中身r,g,bをそれぞれhexにつなげていく
#   array.each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

# さらに短くした形
def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    # 最初だけhexに#が入り、nにr,g,bが入ってくる形
    hex + n.to_s(16).rjust(2, '0')
  end
end

# def to_ints(hex)
#   # hexの中身をそれぞれr,g,bに入れる
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   # 最終的に返す文字列（のための配列）を準備
#   ints = []
#   # 配列に入れる（.hexはStringクラスのメソッドで、16進数を10進数に変更するもの）
#   [r, g, b].each do |s|
#     ints << s.hex
#   end
#   ints
# end


# さらに短くした形

def to_ints(hex)
  # hexの中身をそれぞれr,g,bに入れる
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]

  # mapメソッドで空の配列を用意する必要をなくす
  # mapメソッドはブロックの戻り値を配列の要素にして新しい配列を返すメソッド
  [r, g, b].map do |s|
    s.hex
  end
end
