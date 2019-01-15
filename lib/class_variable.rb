class Product
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

# DVDクラスを定義したタイミングで@@nameがDVDに変更される
puts Product.name #Product かと思いきや、 #DVDに書き換わる
puts DVD.name # DVD

product = Product.new('A great movie')
puts product.name # A great movie

# Product.newの対明筆@@nameが A great movieに変更される
puts Product.name # A great movie
puts DVD.name # A great movie

dvd = DVD.new('An awesome film')
puts dvd.name # An awesome film
puts dvd.upcase_name # AN AWESOME FILM

puts product.name
puts Product.name # An awesome film
puts DVD.name # An awesome film
