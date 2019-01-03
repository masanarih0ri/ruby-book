class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # selfなしでname=メソッドを呼ぶ?
    self.name = 'Bob'
  end

  def rename_to_carol
    # selfありでname=メソッドを呼ぶ
    self.name = 'Carol'
  end

  def rename_to_dave
    # 直接インスタンス変数を置き換える
    @name = 'Dave'
  end
end

# user.nameはAlice
user = User.new('Alice')

puts user.rename_to_bob
# このコードを実行するとnameというローカル変数にBobという文字列を代入したと解釈されてしまう。
# name=のようなセッターメソッドを呼び出したい場合には必ずselfをつける必要がある
puts user.name
puts user.rename_to_dave
puts user.name
puts user.rename_to_carol
puts user.name
