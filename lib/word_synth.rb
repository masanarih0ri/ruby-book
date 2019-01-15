class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    # 配列の中にeffectを入れていく
    @effects << effect
  end

  # playメソッドで与えられた文字列に対して各エフェクトを適用していく
  def play(original_words)
    # 1回目はwordsにoriginal_wordsが入り、そのあとのwordsにはメソッドの戻り値が入るようになる。
    @effects.inject(original_words) do |words, effect|
      # 効果を適用する
      effect.call(words)
    end
  end
end
