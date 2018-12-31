fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      # orangeかつn=3の時には全ての処理を終了する
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end
