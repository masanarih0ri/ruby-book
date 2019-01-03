class Foo
  # このputsはクラス定義の読み込み時に呼び出される

  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内部のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内部のself: #{self}"
  end
end

# これらはFooクラス自身を表している
puts Foo.bar
foo = Foo.new
# これはFooクラスのインスタンスを表している
puts foo.baz

# クラスメソッドからインスタンスメソッドを呼び出したり、その逆はエラーとなる。
