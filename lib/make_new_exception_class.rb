# とりあえず定義だけしておく
class NoCountryError < StandardError
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # 独自に定義したNoCountryErrorを発生させる
    raise NoCountryError, "無効な国名です。#{country}"
  end
end

puts currency_of(:italy)
