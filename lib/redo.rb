foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？"
  # sampleでランダムに取得
  answer = ['はい', 'いいえ'].sample
  puts answer

  count += 1
  # はいという答え出ない場合はもう一度繰り返す
  redo if answer == 'いいえ' && count < 2
  count = 0
end
