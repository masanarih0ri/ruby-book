class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  # to_sメソッドをオーバーライド
  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  # to_sメソッドをさらにオーバーライド
  def to_s
    # superを呼び出すことで、superクラスのメソッドを呼び出した方がシンプル
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new('A great movie', 1000)
puts product.to_s

dvd = DVD.new('An awsome film', 3000, 120)
puts dvd.to_s
