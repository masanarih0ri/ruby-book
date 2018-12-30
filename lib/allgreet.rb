def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end

puts greeting('田中さん')
puts greeting('田中さん', '佐藤さん')
puts greeting('田中さん', '佐藤さん', '加藤さん')
