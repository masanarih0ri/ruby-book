# text = <<TEXT
# I love Ruby.
# Python is a great language.
# Java and JavaScript are different.
# TEXT
#
# puts text.scan(/[A-Z][A-Za-z]+/)

# text = <<TEXT
# 私の郵便番号は1234567です。
# 簿の住所は6770056 兵庫県西脇市板並町1234だよ。
# TEXT
#
# puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

text = <<-TEXT
名前：伊藤淳一
電話：03(1234)5678
電話：090-1234-5678
電話：0795(12)3456
電話：04992-1-2345
住所：兵庫県西脇市板波町1-2-3
TEXT

puts text.scan(/\d{2,5}[-()]\d{1,4}[-)]\d{4}/)
