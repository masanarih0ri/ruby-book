def greeting(&block)
  puts 'おはよう'
  text =
    if block.arity == 1
      yield('こんにちは')
    elsif block.arity == 2
      yield('こん','にちは')
    end
  puts text
  puts 'こんばんは'
end

# 1個のブロック引数でメソッドを引き渡す
greeting do |text|
  text * 2
end

# 2個のブロック引数でメソッドを引き渡す
greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
