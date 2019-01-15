module NameChanger
  def change_name
    # セッターメソッド経由でデータを変更する
    self.name = 'アリス'
  end
end

class User
  include NameChanger

  # ゲッターメソッドとセッターメソッドを用意する
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
puts user.name

user.change_name
puts user.name
