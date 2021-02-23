class Word
  def initialize(word)
    @word = word
  end
  def scrabble
    score_system = {
      1 => %w(a e i o u l n r s t),
      2 => %w(d g),
      3 => %w(b c m p),
      4 => %w(f h v w y),
      5 => %w(k),
      8 => %w(j x),
      10 => %w(q z)
    }
    score = 0
    @word.each_char() do |letter|
      if score_system.fetch(1).include?(letter)
        score = score + 1
      elsif score_system.fetch(2).include?(letter)
        score = score + 2
      elsif score_system.fetch(3).include?(letter)
        score = score + 3
      elsif score_system.fetch(4).include?(letter)
        score = score + 4
      elsif score_system.fetch(5).include?(letter)
        score = score + 5
      elsif score_system.fetch(8).include?(letter)
        score = score + 8
      else score_system.fetch(10).include?(letter)
        score = score + 10
      end
    end
    score
  end
end