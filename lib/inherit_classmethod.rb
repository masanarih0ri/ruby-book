class Foo
  def self.hello
    "hello"
  end
end

class Bar < Foo
end

puts Foo.hello
puts Bar.hello

# どちらも呼び出すことができる。
