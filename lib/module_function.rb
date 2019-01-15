module Loggable
  def log(text)
    puts "Log: #{text}"
  end

  # logメソッドをミックスインとしてもモジュールの特異メソッドとしても使えるようにする
  # module_functionは対象メソッドの定義よりも下で呼び出す

  module_function :log
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello')

# Loggableモジュールをicludeしているクラスを定義する
class Product
  include Loggable

  def title
    # includeしたLoggableモジュールのlogメソッドを呼び出す
    log('title is called')
    'A great movie'
  end
end

# ミックスインとしてlogメソッドを呼び出す
product = Product.new
puts product.title
