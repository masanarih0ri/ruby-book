# elseを使う場合
# else節の中で実行されたコードはエラーが起きてもその手前に書かれたrescue節で捕捉されない

# begin
#   puts 'Hello'
# rescue
#   puts '例外発生'
# else
#   puts '例外なし'
# end

# else使わない場合

begin
  puts 'Hello'
  puts '例外なし'
rescue
  puts '例外発生'
end
