person = {
  # 値が文字列
  name: 'alice',
  # 値が数値
  age: 20,
  # 値が配列
  friends: ['Bob', 'Carol'],
  # 値がハッシュ
  phones: { home: '1234-0000', mobile: '5678-0000' }
}

puts person[:age]
puts person[:friends]
puts person[:phones][:mobile]
