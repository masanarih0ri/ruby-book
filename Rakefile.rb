require 'rake/testtask'

# 新しいタスクを定義
Rake::TestTask.new do |t|
  # 実行対象となるテストファイルのパターンを指定
  t.pattern = 'test/**/*_test.rb'
end

task default: :test
