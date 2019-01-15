def greeting
  puts 'おはよう'
  # ブロックに引数を渡し、戻り値を受け取る
  text = yield('こんにちは', 'お昼ご飯ですよ')
  # ブロックの戻り値をコンソールに出力する
  puts text
  puts 'こんばんは'
end

greeting do |text , lunch|
  # yieldで和tされた文字列を2回繰り返す
  (text + lunch) * 2
end
