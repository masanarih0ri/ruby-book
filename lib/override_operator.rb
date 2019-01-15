# # これだと期待した通りに==が動作しない
# class Product
#   attr_reader :code, :name
#
#   def initialize(code, name)
#     @code = code
#     @name = name
#   end
# end
#
# a = Product.new('A-0001', 'A great movie')
# b = Product.new('B-0002', 'An awesome film')
# c = Product.new('A-0001', 'A great movie')
# # どちらもfalse object_idをベースに判断しているのでオブジェクトの中身が一緒でも、別のものとして認識される。
# puts a==b
# puts a==c


# ==を期待通りに動かす
class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  # ここで == を再定義する
  def ==(other)
    # is_a?メソッドは、レシーバのオブジェクトが引数Productクラスのインスタンスであればtrue、そうでなければfalseを返す。
    if other.is_a?(Product)
      # 商品コードが一致すれば同じProductとみなす
      code == other.code
    else
      # otherがProductでなければfalse
      false
    end
  end
end

a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0002', 'An awesome film')
c = Product.new('A-0001', 'A great movie')

puts a == b
puts a == c

puts a.== b
puts a.== c

# Product以外の比較はfalse
puts a == 1
puts a == 'a'
