module StringShuffle
  # refinementsが目的なので、refineメソッドを使う
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

# refinementsを有効にするためにusingというメソッドを使う
class User
  # 有効化
  using StringShuffle


  def initialize(name)
    @name = name
  end

  def shuffled_name
    # Userクラスの内部であればshuffleメソッドが有効になる
    @name.shuffle
  end

  # User クラスを抜けるとshuffleメソッドは向こうに
end

user = User.new('Masanari')

puts user.shuffled_name
