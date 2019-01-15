# rescue節で例外情報を変数eに格納する
# begin
#   1 / 0
# rescue => e
#   puts "#{e.class} #{e.message}"
#   puts e.backtrace
# end

# 組み込み変数の$!と$@に格納された例外定業を使う

begin
  1 / 0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end
