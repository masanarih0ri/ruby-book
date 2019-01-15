# この書き方だと2回同じメソッドが呼び出されているので、moduleを使って書き直す
# class Product
#   def title
#     log('title is called')
#     'A great movie'
#   end
#
#   private
#
#   def log(text)
#     # 本来であれば標準ライブラリのLoggerクラスを使うが、簡易的にputsで済ませる
#     puts "[Log]#{text}"
#   end
# end
#
# class User
#   def name
#     log('name is called')
#     'Alice'
#   end
#
#   private
#   # このメソッドの実装はProductクラスと全く同じ
#   def log(text)
#     puts "[Log]#{text}"
#   end
# end
#
# product = Product.new
# puts product.title
#
# user = User.new
# puts user.name

# moduleを使った書き方

# ログ出力用のmodule
module Loggable
  # 外から呼び出せない形にするためにprivateメソッドとする
  private
  
  def log(text)
    puts "[Log]:#{text}"
  end
end

class Product
  include Loggable

  def title
    log('title is called')
    'A great movie'
  end
end

class User
  include Loggable

  def name
    log('name is called')
    'Alice'
  end
end

product = Product.new
puts product.title

user = User.new
puts user.name
