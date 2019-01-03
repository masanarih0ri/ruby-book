class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

product = Product.new('A great moive', 1000)

puts product.name
puts product.price


class DVD < Product
  # nameとpriceはsuperclass（Product）でattr_readerが設定されているので定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    # superclassのinitializeメソッドを呼び出す
    super(name, price)
    # DVDクラス独自の定義
    @running_time = running_time
  end
end

dvd = DVD.new('A great movie', 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time
