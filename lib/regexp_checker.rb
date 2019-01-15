# putsだとテキストを表示した後に改行しない
print 'Text?: '
text = gets.chomp

# 例外処理を組み込んで再入力可能にする
begin
  print 'Pattern?: '
  pattern = gets.chomp
  # regexpに正規表現のパターンを入れておく
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

# パターンにマッチする文字があればmatchesに入れる
matches = text.scan(regexp)
if matches.length > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts "Nothing Matched."
end
