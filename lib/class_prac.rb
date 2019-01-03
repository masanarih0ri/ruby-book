class User
  # @nameを読み書きするメソッドを自動的に定義
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
# @nameを変更する
user.name = 'Bob'
# @nameを参照する
puts user.name
