class Gate
  STATIONS = [:umeda, :juso, :mikuni] # :nodoc:
  FARES = [150, 190] # :nodoc:

  # Gateオブジェクトの作成
  # ==== 引数
  # * +station_name+ - 駅名
  def initialize(station_name)
    @station_name = station_name
  end

  # 改札機を通って駅に入場する
  # ==== 引数
  # * +ticket+ - 切符
  def enter(ticket)
    # stampメソッドを呼び出す
    ticket.stamp(@station_name)
  end

  # 改札機を通って駅から出場する
  # ==== 引数
  # * +ticket+ -切符
  # ==== 戻り値
  # * +boolean+ - 運賃が足りていれば+true+、不足していれば+false+

  def exit(ticket)
    fare = calc_fare(ticket)
    # true falseの判定をする
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    # indexメソッドは配列の中から引数に合致する要素の添字を取得する
    # [:umeda, , :juso, :mikuni].index[:juso] => 1
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station_name)
    distance = to - from
    FARES[distance - 1]
  end
end
