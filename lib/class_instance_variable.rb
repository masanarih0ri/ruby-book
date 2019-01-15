class Product
  @name = 'Product'

  def self.name
    @name
  end

  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

Product.name

product = Product.new('A great movie')
puts product.name # A great moive
puts Product.name # Product
