require 'singleton'

class Configuration
  # singletonモジュールをincludeする
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    # 設定値を初期化する
    @base_url = ''
    @debug_mode = false
  end
end

# Configurationクラスはnewできない
# instanceメソッドを使ってインスタンスを取得する

config = Configuration.instance
# 設定値を設定する
config.base_url = 'http://example.com'
config.debug_mode = true

# instanceメソッドを使って再度インスタンスを取得する
other = Configuration.instance
# 先ほどの設定値を取得できる
puts other.base_url
puts other.debug_mode

# どちらも同じobject_idになっている
puts config.object_id
puts other.object_id
puts config.equal?(other)
