fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

fruits.each do |fruit|
  # 配列の数字をランダムに入れ替えて、3が出たらbreak
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end
