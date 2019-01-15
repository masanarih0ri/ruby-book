# 以下のProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end
end

# prependするためにモジュールを定義
module NameDecorator
  def name
    # prependするとsuperはミックスインした先のクラスのnameメソッドを呼び出す
    "<<#{super}>>"
  end
end

# 既存メソッドを変更するためにProductクラスを再度オープンする

class Product
  # includeではなくprependでミックスインする
  prepend NameDecorator
end

# エイリアスメソッドを使った場合と同じ結果
product = Product.new
puts product.name
