# メートルとその他の単位との比率をハッシュに入れる
UNITS = { m: 1.0, ft: 3.28, in: 39.37}

def convert_length(length, from: , to:)
  # 変換後の長さは 変換前の単位の長さ / 変換前の単位の比率 * 変換後の単位の比率という式で求められる
  (length / UNITS[from] * UNITS[to]).round(2)
end
