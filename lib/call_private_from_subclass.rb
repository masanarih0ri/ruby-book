# class Product
#   private
#
#   def name
#     'A great movie'
#   end
# end
#
# class DVD < Product
#   def to_s
#     # nameはsupreclassのprivateメソッド
#     "name: #{name}"
#   end
# end
#
# dvd = DVD.new
# # 内部でsuperclassのprivateメソッドを呼んでいるがエラーにはならない
# # to_sを呼び出した時にnameも呼び出している
# puts dvd.to_s

# superclassのnameメソッドをオーバーライドするパターン

class Product
  def to_s
    "name: #{name}"
  end

  private

  def name
    'A great movie'
  end
end

class DVD < Product
  private

  # superclassのprivateメソッドをオーバーライドする
  def name
    'An awesome film'
  end
end

product = Product.new
puts product.to_s

dvd = DVD.new
puts dvd.to_s
