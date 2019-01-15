module Loggable
  def log(text)
    puts "LOG: #{text}"
  end
end

class Product
  # Loggableモジュールのメソッドを特異メソッドとしてミックスインする
  extend Loggable
  log('defined Product class')

  def self.create_products
    # logメソッドをクラスメソッドの中で呼び出す
    log('create_products is called')
  end
end

# クラスメソッド経由でlogメソッドが呼び出される
puts Product.create_products
puts Product.log('Hello')
