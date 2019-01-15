module Effects
  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->(words) do
      words.chars.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.loud(level)
    ->(words)do
    # スペースで区切る＞大文字に変換して!をつける＞スペースで連結
      words.split(' ').map{ |word| word.upcase + '!' * level }.join(' ')
    end
  end
end
