# 正常に終了した場合

ret =
  begin
    'OKです'
    'OK' # ここが戻り値となる
  rescue
    'error'
  ensure
    'ensure'
  end

puts ret

# # 例外が発生した場合
# ret =
#   begin
#     1/0
#     'OK'
#   rescue
#     'error' # ここが戻り値となる
#   ensure
#     'ensure'
#   end
#
# puts ret
