require 'json'

user = { name: 'Alice', email: 'alice@hoge.com', age: 30 }

# ハッシュをJSON形式の文字列に変換する（似ているがRubyのハッシュではない）
user_json = user.to_json
puts user_json

# JSON文字列をパースしてハッシュに変換する（キーはシンボルではなく文字列になる）
parse_json = JSON.parse(user_json)
puts parse_json
