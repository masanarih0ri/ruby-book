module Taggable
  def price_tag
    # priceメソッドはinclude先で定義されている前提
    "#{price}円"
  end
end

class Product
  include Taggable

  def price
    1000
  end
end

product = Product.new
puts product.price_tag

# モジュールのメソッドを実行する際のselfはinclude先のクラスのインスタンスになる。
# この場合だとTaggableの中にあるprice_tagメソッドはProductクラスのpriceメソッドを呼び出すことができる。
# #{self.price}円としても良い。selfはこの場合はpriceメソッドを呼び出しても構わない。
