class Tempo
  include Comparable

  attr_reader :bpm

  # bpmはBeats Per Minuteの略
  def initialize(bpm)
    @bpm = bpm
  end

  # <=>はComparableモジュールで使われる演算子

  def <=>(other)
    if other.is_a?(Tempo)
      # bpm同士を比較しか結果を返す
      bpm <=> other.bpm
    else
      # 比較できない場合はnilを返す
      nil
    end
  end

  # irb場で結果を見やすくするためにinspectメソッドをオーバーライド
  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(150)
t_200 = Tempo.new(200)
puts t_120 > t_180
puts t_120 <= t_180
puts t_120 == t_180

tempos = [Tempo.new(200), Tempo.new(120), Tempo.new(130)]
puts tempos.sort
