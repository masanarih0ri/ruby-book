require 'yaml'

# yaml形式のデータをセットする
yaml = <<TEXT
alice:
  name: 'Alice'
  email: 'alice@example.com'
  age: 20
TEXT

# YAMLテキストをパースしてハッシュにする
users = YAML.load(yaml)
puts users

# ハッシュに新しい要素を追加する
users['alice']['gender'] = :female

puts YAML.dump(users)
