def convert_hash_syntax(old_syntax)
  # old_syntaxの内容を置換する
  # 「:文字列 =>」 これを「文字列: 」に変更する
  # \1は1番目にキャプチャされた文字列を表している。nameやageなどがここに入る
  old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end
