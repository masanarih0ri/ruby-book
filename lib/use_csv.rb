require 'csv'

# CSVファイルへの出力
CSV.open('./lib/sample.csv', 'w') do |csv|
  # ヘッダ行を出力する
  csv << ['Name', 'Email', 'Age']
  # 明細行を出力する
  csv << ['Alice', 'alice@hoge.com', 20]
end

CSV.foreach('./lib/sample.csv') do |row|
  puts "#{row[0]}, #{row[1]}, #{row[2]}"
end
#
# # タブ区切りのCSVファイル(TSV)を読み込み
# CSV.foreach('./lib/sample.tsv', col_sep: "\t") do |row|
#   # 各行について、一列目から三列目の値をterminalに表示
#   puts "1: #{row[0]}, 2: #{row[1]}, 3: #{row[2]}"
# end
