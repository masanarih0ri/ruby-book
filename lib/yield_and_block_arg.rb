def greeting(&afternoon)
  puts 'おはよう'
  # callメソッドを使ってブロックを実行する
  text = afternoon.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end
