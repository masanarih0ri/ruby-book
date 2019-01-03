class User
  def initialize(name)
    @name = name
  end

  # selfをつけるとクラスメソッドになる
  def self.create_users(names)
    # mapメソッドを使って配列を返す
    names.map do |name|
      User.new(name)
    end
  end

  # これはインスタンスメソッド
  def hello
    "Hello, I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']
# クラスメソッドの呼び出し
users = User.create_users(names)
puts 

users.each do |user|
  # インスタンスメソッドの呼び出し
  puts user.hello
end
