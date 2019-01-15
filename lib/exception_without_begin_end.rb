require 'date'

# def to_date(string)
#   begin
#     # 文字列をパースする
#     Date.parse(string)
#   rescue ArgumentError
#     nil
#   end
# end

# 短く書く場合

def to_date(string)
  Date.parse(string) rescue nil
end

puts to_date('2017-09-30')
puts to_date('abcdef')
