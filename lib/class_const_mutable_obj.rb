# class Product
#   NAME = 'A product'
#   SOME_NAMES = ['Foo', 'Bar', 'Baz']
#   SOME_PRICES = {'Foo' => 1000, 'Bar' => 2000, 'Baz' => 3000}
# end
#
# # 文字列を破壊的に大文字に変更する
# Product::NAME.upcase!
# puts Product::NAME
#
# # 配列に新しい要素を追加する
# Product::SOME_NAMES << 'Hoge'
# puts Product::SOME_NAMES
#
# # ハッシュに新しいキーと値を追加する
# Product::SOME_PRICES['Hoge'] = 4000
# puts Product::SOME_PRICES

# 定数の値を変数に代入した時はさらにわかりにくい

class Product
  SOME_NAMES = ['Foo', 'Bar', 'Baz']

  def self.names_without_foo(names = SOME_NAMES)
    # namesがデフォルト値だと、以下のコードは定数のSOME_NAMESを破壊的に変更することになる
    names.delete('Foo')
    names
  end
end

# ここでProductクラスのnames_without_fooメソッドを呼び出して、SOME_NAMESの中身が入ったnamesという配列オブジェクトからFooを削除することになる。
Product.names_without_foo

puts Product::SOME_NAMES

# 定数が変わって欲しくない場合はSOME_NAMESの後ろに.freezeをつけることで解決する
# SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
# 個別の配列の要素まで変えたくない場合はSOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze のようにする
# もう少し短い書き方だとSOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freezeとする。
