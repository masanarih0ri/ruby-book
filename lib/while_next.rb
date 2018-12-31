numbers = [1, 2, 3, 4, 5]
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  # while文の中でnextを使う
  next if n.even?
  puts n
end
