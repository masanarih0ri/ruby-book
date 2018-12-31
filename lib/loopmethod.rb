numbers = [1,2,3,4,5]
loop do
  # sampleメソッドでランダムに要素を取得
   n = numbers.sample
   puts n
   break if n == 5
end
