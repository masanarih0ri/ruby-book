puts "Start."

module Greeter
  def hello
    'hello'
  end
end

# 例外処理を組み込んで例外に対処する

begin
  greeter = Greeter.new
rescue
  puts '例外が発生したが、このまま実行する'
end

# 例外処理を組み込んだので最後まで実行可能
puts 'End.'
