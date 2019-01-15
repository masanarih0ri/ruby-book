# greeting_jaメソッドやgreeting_enメソッドはブロックを受け取るだけで自分は実行しない
def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  # ブロックを別メソッドに引き渡す
  greeting_common(texts, &block)
end

# 英語版のgreetingメソッド
def greeting_en(&block)
  texts = ['good morning', 'hello', 'good evening']
  # ブロックを別メソッドに引き渡す
  greeting_common(texts, &block)
end

# 出力処理用の共通メソッド
def greeting_common(texts, &block)
  puts texts[0]
  # ブロックを実行する
  # puts block.call('こんにちは')みたいな感じで処理を実行
  puts block.call(texts[1])
  puts texts[2]
end

# 日本語版のgreetingメソッドを呼び出す
greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text.upcase
end
