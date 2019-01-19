# 環境変数MY_NAMEを取得する
name = ENV['MY_NAME']
# 1番目と2番目の起動時引数を取得する
email = ARGV[0]
age = ARGV[1]

puts "name: #{name}, email: #{email}, age: #{age}"
