# def greeting(&block)
#   # blockのクラス名を表示する
#   puts block.class
#
#   puts 'おはよう'
#   text = block.call('こんにちは')
#   puts text
#   puts 'こんばんは'
# end
#
# greeting do |text|
#   text * 2
# end

# 直接ブロックを渡さずにあらかじめ作成したProcオブジェクトをgreetingメソッドに渡す場合

def greeting(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

repeat_proc = Proc.new{ |text| text * 2 }
greeting(&repeat_proc)
