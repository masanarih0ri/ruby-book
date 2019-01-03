class User
  def initialize(name)
    @name = name
  end

  # これはインスタンスメソッド
  def hello
    # @nameの値はインスタンスによって異なる
    "Hello, #{@name}"
  end
end

alice = User.new('Alice')

# インスタンスメソッドはインスタンス(オブジェクト)に対して呼び出す
puts alice.hello

bob = User.new('Bob')
# インスタンスによって内部のデータが違うのでhelloメソッドの結果も異なる
puts bob.hello
