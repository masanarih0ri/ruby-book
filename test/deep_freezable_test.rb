require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    # 配列の値は正しいか
    assert_equal(['Japan', 'US', 'India'], Team::COUNTRIES)
    # 配列自身がfreezeされているか assert()メソッドは()の中身がtrueで返ってくることを前提とする
    assert(Team::COUNTRIES.frozen?)
    # 配列の要素が全てfreezeされているか
    assert(Team::COUNTRIES.all? {|country| country.frozen?})
  end

  def test_deep_freeze_to_hash
    # ハッシュの値が正しいか
    assert_equal({'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'}, Bank::CURRENCIES)
    # ハッシュ自身がfreezeされているか
    assert(Bank::CURRENCIES.frozen?)
    # ハッシュの要素が全てfreezeされているか
    assert(Bank::CURRENCIES.all? {|key, value| key.frozen? && value.frozen?})
  end
end
